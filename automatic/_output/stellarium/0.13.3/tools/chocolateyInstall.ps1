$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.13.3/stellarium-0.13.3-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.13.3/stellarium-0.13.3-win64.exe/download')
$url = $urlArray[0]
$checksum = '9047ee20f78404ce2e0e6ff5caf1bb60196c4f25'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = '88203a1773bd47580cd084db4dfcfaebb012bcb1'
$checksumType64 = 'sha1'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
