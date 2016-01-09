$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.14.2/stellarium-0.14.2-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.14.2/stellarium-0.14.2-win64.exe/download')
$url = $urlArray[0]
$checksum = 'e5d8906a012e62330b8a6440cee6e670f8bfedc8'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = 'fea4b68a025eed9b836d31f4a983eac1b4450933'
$checksumType64 = 'sha1'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
