$packageName = 'adobeshockwaveplayer'
$installerType = 'exe'
$url = 'http://fs41.filehippo.com/8820/7b65b86a87844ae9a2e9a09187d2759c/Shockwave_Installer_Full.exe'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\shockwave.ahk"
Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes