$packageName = '{{PackageName}}'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\shockwave.ahk"

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
