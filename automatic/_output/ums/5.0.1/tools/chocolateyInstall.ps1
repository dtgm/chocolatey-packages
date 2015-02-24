$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
# hack to workaround limitation with chocopkgup/ketarin
$url = 'http://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows/UMS-5.0.1-Java7.exe/download'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes