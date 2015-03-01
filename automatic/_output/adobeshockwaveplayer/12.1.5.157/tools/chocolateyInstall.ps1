$packageName = 'adobeshockwaveplayer'
$installerType = 'exe'
$url = 'http://fs41.filehippo.com/8820/aeab5d76f3d04f28b399e28af18d0d62/Shockwave_Installer_Full.exe'
$checksum = '7bd7f120eb16aa218c55b5e2b22a63746bdfe9fe'
$checksumType = 'sha1'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\shockwave.ahk"

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
