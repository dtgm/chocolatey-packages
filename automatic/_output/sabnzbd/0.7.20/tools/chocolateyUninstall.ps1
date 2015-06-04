$package = 'SABnzbd+'

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

  Write-Host 'Removing Windows Firewall Exclusions'
  netsh advfirewall firewall delete rule name="SABnzbd+"

  $installPath = (Join-Path "${Env:\ProgramFiles(x86)}" 'sabnzbd'),
    (Join-Path 'Env:ProgramFiles' 'sabnzbd') |
    ? { Test-Path $_ } |
    Select -First 1

  $helper = 'SABnzbd-helper.exe'
  $service = 'SABnzbd-service.exe'

  # already installed, so must call remove on existing exes to be safe
  if ($installPath -ne $null)
  {
    Write-Host 'Removing SABnzbd+ services'
    $upgrade = $true
    $helper, $service |
      % {
        $path = Join-Path $installPath $_
        if (Test-Path $path) { &$path remove }
      }
  }

  # the above should completely remove existing services, but in case not
  'SABHelper', 'SABnzbd' |
    % { if (Get-Service -Include $_) { sc.exe delete $_ } }

  $uninstall = Join-Path $installPath 'Uninstall.exe'

  #uses NSIS installer - http://nsis.sourceforge.net/Docs/Chapter3.html
  $uninstallParams = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '/S';
    File = $uninstall;
  }

  Uninstall-ChocolateyPackage @uninstallParams

  #remove file association to sabnzbd
  #http://stackoverflow.com/questions/323426/windows-command-line-non-evaluation-of-environment-variable
  Write-Host 'Removing SABnzbd+ NZB file associations'
  $nzbRunner = cmd /c ftype NZBFile
  if ($nzbRunner -match 'SABnzbd.exe')
  {
    cmd /c ftype NZBFile=
  }

  $uninstallComplete = {
    (Get-Process 'uninstall' -ErrorAction SilentlyContinue) -eq $null
  }
  if (WaitForSuccess $uninstallComplete 10 'uninstall to complete')
  {
    $installPath, (Join-Path $Env:LOCALAPPDATA 'sabnzbd') |
      % {
        $count = (Get-ChildItem $_ -Recurse -ErrorAction SilentlyContinue).Count
        if ($count -gt 0)
        {
          Write-Host "Remove remaining $count files from $_ manually"
        }
      }
  }

  Write-ChocolateySuccess $package
}
catch
{
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
