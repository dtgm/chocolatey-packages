Write-Verbose "Setting generated variables."
$packageName = 'github'
$packageVersion = [System.Version]'3.0.15.0'
$installerType = 'exe'
$url = 'https://github-windows.s3.amazonaws.com/GitHubSetup.exe'
$checksum = 'A8FE237B447134DAA9CC1DB3323DA980'

Write-Verbose "Setting static variables."
$checksumType = 'md5'
$silentArgs = ''
$validExitCodes = @(0)

$reg = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' `
                        -ErrorAction:SilentlyContinue `
       | Where-Object {$_.DisplayName -like $packageName}
$installedVersion = [System.Version]$reg.DisplayVersion

if ($installedVersion -ge $packageVersion) {
  Write-Host "GitHub $packageVersion is already installed."
} else {
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $ahkExe = 'AutoHotKey'
  $ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"
  $ahkProc = Start-Process -FilePath $ahkExe `
                           -ArgumentList $ahkFile `
                           -Verb RunAs `
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
  Microsoft`'s ClickOnce framework is downloading and executing the ~45 MB install file.
  This may take several minutes or longer. Please wait...
"@

  $ahkChild = Get-WmiObject -Class Win32_Process -Filter "ParentProcessID=$ahkId"
  $ahkId = $ahkChild.ProcessId
  Write-Debug "AHK child process ID:`t$ahkId"
  if ( $ahkChild.HasExited ) { 
    Write-Warning "$ahkExe process was not found running. Please verify $packageName was installed."
    Write-Warning "If there was an issue, you may need to append --force to command."
  } else {
    Write-Verbose "`"$ahkFile`" is waiting for windows to pounce on. This may take several minutes..."
    Wait-Process -Id $ahkId
  }
}