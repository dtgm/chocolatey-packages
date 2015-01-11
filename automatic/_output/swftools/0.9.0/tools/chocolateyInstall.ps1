$packageName = 'swftools'
$installerType = 'exe'	
$silentArgs = ''
$url = 'http://swftools.org/swftools-0.9.0.exe'
$validExitCodes = @(0)
$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $scriptPath 'swftoolsInstall.ahk'
Start-Process 'AutoHotKey' "$ahkFile"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes