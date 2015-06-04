$package = 'SABnzbd+'
$upgrade = $false

function Get-CurrentDirectory
{
  $thisName = $MyInvocation.MyCommand.Name
  [IO.Path]::GetDirectoryName((Get-Content function:$thisName).File)
}

. (Join-Path (Get-CurrentDirectory) 'WaitForSuccess.ps1')

try
{
  # stop helper services if they're running
  Get-Service -Include SABnzbd, SABHelper |
    Stop-Service -Force

  $programFilesPath = "${Env:\ProgramFiles(x86)}", $Env:ProgramFiles |
    ? { Test-Path $_ } |
    Select -First 1

  $helper = 'SABnzbd-helper.exe'
  $service = 'SABnzbd-service.exe'

  $installPath = Join-Path $programFilesPath 'sabnzbd'
  # already installed, so must call remove on existing exes to be safe
  if (Test-Path $installPath)
  {
    $upgrade = $true
    $helper, $service |
      % {
        $path = Join-Path $installPath $_
        if (Test-Path $path) { &$path remove }
      }
  }

  #uses NSIS installer
  Install-ChocolateyPackage 'SABnzbd-0.7.5-win32-setup.exe' 'exe' '/S' `
    'http://sourceforge.net/projects/sabnzbdplus/files/sabnzbdplus/0.7.5/SABnzbd-0.7.5-win32-setup.exe/download'

  #need to turn on / install services
  @("${Env:\ProgramFiles(x86)}", '^%ProgramFiles(x86)^%'),
  @($Env:ProgramFiles, '^%ProgramFiles^%') |
    % {
      $path = Join-Path $_[0] 'sabnzbd'
      if (Test-Path $path)
      {
        Write-Host "Found SABnzbd installed at $path"
        $installPath = $path
        $dosPath = $_[1]
      }
    }

  #register file association
  #http://stackoverflow.com/questions/323426/windows-command-line-non-evaluation-of-environment-variable
  Write-Host "Registering SABnzbd+ NZB file associations"
  cmd /c assoc .nzb=NZBFile
  $sabPath = "^`"$dosPath\sabnzbd\SABnzbd.exe^`""
  cmd /c ftype NZBFile=$sabPath `"%1`"

  Push-Location $installPath

  $dataDirectory = Join-Path $Env:LOCALAPPDATA 'sabnzbd'
  Write-Host "Registering SABnzbd+ service with data at $dataDirectory"
  &".\$service" -f $dataDirectory install | Out-Null
  &".\$helper" install | Out-Null

  Pop-Location

  # Set-Service cmdlet doesn't have delayed start :(
  sc.exe config SABnzbd start= delayed-auto

  # configure windows firewall
  Write-Host "Registering SABnzbd+ firewall exclusions"
  netsh advfirewall firewall delete rule name="SABnzbd+"
  netsh advfirewall firewall add rule name="SABnzbd+" dir=in protocol=tcp localport=8080 action=allow program="$installPath\SABnzbd-service.exe"
  netsh advfirewall firewall add rule name="SABnzbd+" dir=in protocol=tcp localport=9090 action=allow program="$installPath\SABnzbd-service.exe"

  Write-Host "Starting SABnzbd+ service"
  Start-Service SABnzbd

  #wait up to 5 seconds for service to fire up
  $msg = 'SABnzbd+ service to start, to launch browser config'
  if (WaitForSuccess { (Get-Service SABnzbd).Status -eq 'Running' } 10 $msg)
  {
    # no need to use the web UI to configure an upgrade
    if (!$upgrade)
    {
      #launch local default browser to configure
      [Diagnostics.Process]::Start('http://localhost:8080') | Out-Null
    }
  }
  else
  {
    Write-ChocolateyFailure 'SABnzbd+ service failed to start!'
    return
  }

  Write-ChocolateySuccess $package
}
catch
{
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
