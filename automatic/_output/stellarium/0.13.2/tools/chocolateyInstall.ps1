$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.13.2/stellarium-0.13.2-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.13.2/stellarium-0.13.2-win64.exe/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$validExitCodes = @(0)
#$checksum = 'x'
#$checksumType = 'sha1'
#$checksum64 = 'x'
#$checksumType64 = 'sha1'
#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes