$packageName = 'adobeshockwaveplayer'
$installerType = 'exe'
$url = 'http://www.filehippo.com//download/file/828023e75e9ac71e82c9fa6ea3dcd3f988a8069997f3d9519f8aa28441f26b39/'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\shockwave.ahk"
Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes