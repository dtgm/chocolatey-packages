Write-Verbose "Setting generated package variables."
$packageName = 'github'
$packageVersion = [System.Version]'3.3.1.0'
$installerType = 'exe'
$url = 'https://github-windows.s3.amazonaws.com/GitHubSetup.exe'
$checksum = '06E4FE93D2148B36469BB2080E3FB39C'

Write-Verbose "Setting static package variables."
$checksumType = 'md5'
$silentArgs = ''
$validExitCodes = @(0)

$reg = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' `
                        -ErrorAction:SilentlyContinue `
       | Where-Object {$_.DisplayName -like $packageName}
$installedVersion = [System.Version]$reg.DisplayVersion

if ($reg) {
  Write-Verbose "GitHub was found in registry, comparing versions."
  
  if ($installedVersion -ge $packageVersion) {  
    Write-Host "GitHub $packageVersion or newer is already installed."
  } else {
    Write-Warning "Restart GitHub to upgrade."
    Write-Debug "https://help.github.com/desktop/guides/getting-started/updating-github-desktop/"
  }
}
else {
  Write-Verbose "Installing GitHub."
  
  Write-Debug "Using AutoHotkey to silence ClickOnce framework dialog boxes."
  Write-Debug "Note some popups are minimized to taskbar."
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $ahkExe = 'AutoHotKey'
  $ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"
  $ahkProc = Start-Process -FilePath $ahkExe `
                           -ArgumentList $ahkFile `
                           -PassThru
  $ahkId = $ahkProc.Id
  Write-Debug "$ahkExe start time:`t$($ahkProc.StartTime.ToShortTimeString())"
  Write-Debug "Process ID:`t$ahkId"
                           
  Write-Debug "$Env:ChocolateyInstall\helpers\functions"
  Install-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -Url "$url" `
                            -SilentArgs "$silentArgs" `
                            -ValidExitCodes $validExitCodes `
                            -Checksum "$checksum" `
                            -ChecksumType "$checksumType"
  Write-Host @"
  Microsoft`'s ClickOnce framework is downloading and extracting the ~110 MB install files.
  This may take several minutes or longer. Please wait...
"@

  Write-Debug "MS ClickOnce programs install outside of chocolatey control so make choco wait."
  $ahkChild = Get-WmiObject -Class Win32_Process -Filter "ParentProcessID=$ahkId"
  $ahkId = $ahkChild.ProcessId
  Write-Debug "AHK child process ID:`t$ahkId"
  if ($ahkChild.HasExited) { 
    Write-Warning "$ahkExe process was not found running. Please verify $packageName was installed."
    Write-Warning "If there was an issue, you may need to append `"--force`" to choco command."
  } else {
    Write-Verbose "`"$ahkFile`" is waiting for windows to pounce on. This may take several minutes..."
    Wait-Process -Id $ahkId
  }
}