$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.14.1/stellarium-0.14.1-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.14.1/stellarium-0.14.1-win64.exe/download')
$url = $urlArray[0]
$checksum = 'c0339b6a1c45916dc25f81235723de0fec76dc30'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
