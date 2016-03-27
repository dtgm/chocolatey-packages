$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.14.2/stellarium-0.14.2-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.14.2/stellarium-0.14.2-win64.exe/download')
$url = $urlArray[0]
$checksum = '3208028729fc70910309eb76bed750c4368b016d'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = '4aa55b87071ff0c83b05dff744270eba720092bf'
$checksumType64 = 'sha1'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
