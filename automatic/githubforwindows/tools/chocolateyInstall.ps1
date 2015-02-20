$packageName = '{{PackageName}}'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"

$ahkProcess = Start-Process $ahkExe $ahkFile -PassThru
Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"

if (!($ahkProcess.HasExited)) { 
  Write-Debug "Waiting for `'$ahkFile`' to finish running, please wait...."
  Wait-Process -Id $ahkProcess.Id 
}

Write-Debug "`'$ahkExe`' exited with $($ahkProcess.ExitCode)"
if ($ahkProcess.ExitCode -ne 0) {
  throw $_.Exception "AutoHotKey script for `'$packageName'` did not complete successfully."
}
