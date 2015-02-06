$packageName = 'cdex'
$installerType = 'exe'
$url = 'http://hivelocity.dl.sourceforge.net/project/cdexos/cdexos/CDex 1.77/CDex-1.77-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = 'd43ec3ca087086340baa9345161eb6cf78e5e035'
$checksumType = 'sha1'
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\$packageName.ahk"
Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"