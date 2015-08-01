$packageName = 'IconsExtract' 
$installerType = 'EXE' 
$url = 'http://www.nirsoft.net/utils/iconsext.zip' 
$url64 = $url 
$validExitCodes = @(0)
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
