$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
# hack to workaround limitation with chocopkgup/ketarin
$url = 'http://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows/UMS-5.1.2-Java7.exe/download'
$checksum = ''
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" 
