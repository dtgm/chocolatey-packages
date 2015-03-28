$packageName = 'githubforwindows'
$installerType = 'exe'
$url = 'https://github-windows.s3.amazonaws.com/GitHubSetup.exe'
$checksum = '88DAAC23C0918303E2A944B1BBF6760F'
$checksumType = 'md5'
$silentArgs = ''
$validExitCodes = @(0)
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"

$ahkProcess = Start-Process $ahkExe $ahkFile -PassThru
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

if (!($ahkProcess.HasExited)) { 
  Write-Debug "Waiting for `'$ahkFile`' to finish running, please wait...."
  Wait-Process -Id $ahkProcess.Id 
}
Write-Debug "`'$ahkExe`' exited with $($ahkProcess.ExitCode)"
if ($ahkProcess.ExitCode -ne 0) {
  throw $_.Exception "AutoHotKey script for `'$packageName'` did not complete successfully."
}
