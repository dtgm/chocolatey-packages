$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.14.0/stellarium-0.14.0-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.14.0/stellarium-0.14.0-win64.exe/download')
$url = $urlArray[0]
$checksum = '364b961e5dc522da07fbabace6c97cad713ef99b'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = 'c8416a0d1937e7a5e9d66a39016ed8eaeaeee80a'
$checksumType64 = 'sha1'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
