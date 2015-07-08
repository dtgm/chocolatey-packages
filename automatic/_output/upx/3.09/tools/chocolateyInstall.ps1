$packageName = 'upx' 
$installerType = 'EXE' 
$url = 'http://upx.sourceforge.net/download/upx309d.zip'
$url64 = $url 
$silentArgs = 'SILENT_ARGS_HERE' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" 
$validExitCodes = @(0) 

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"