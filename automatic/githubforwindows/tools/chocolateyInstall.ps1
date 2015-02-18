$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url = '{{DownloadUrl}}'
$url64 = $url
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$checksumx64 = '{{Checksumx64}}'
$checksumTypex64 = $checksumType
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"
$ahkProcess = Start-Process $ahkExe $ahkFile -PassThru
Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -url64bit "$url64" -silentArgs "$silentArgs" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksumx64" -checksumType64 "$checksumTypex64"
if (!($ahkProcess.HasExited)) { 
  Write-Debug "Waiting for `'$ahkFile`' to finish running, please wait...."
  Wait-Process -Id $ahkProcess.Id 
}
Write-Debug "`'$ahkExe`' exited with $($ahkProcess.ExitCode)"
if ($ahkProcess.ExitCode -ne 0) {
  throw $_.Exception "AutoHotKey script for `'$packageName'` did not complete successfully."
}
