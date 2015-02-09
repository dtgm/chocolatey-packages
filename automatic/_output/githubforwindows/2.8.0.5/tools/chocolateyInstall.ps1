$packageName = 'githubforwindows'
$installerType = 'EXE'
$url = 'https://github-windows.s3.amazonaws.com/GitHubSetup.exe'
$url64 = $url
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = 'D9BF1F1A1CF477F8A8FE1333E490FCD7'
$checksumType = 'md5'
$checksumx64 = 'D9BF1F1A1CF477F8A8FE1333E490FCD7'
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
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw "AutoHotKey script for `'$packageName'` did not complete successfully."
}
Write-ChocolateySuccess "$packageName"