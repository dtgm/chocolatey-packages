$packageName = 'blink'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://blink.sipthor.net/download.phtml?download&os=nt'
$validExitCodes = @(0)
$checksum = 'c49076d7f1d2c8d4a2875845ba4c54e3'
$checksumType = 'md5'
$checksumx64 = 'c49076d7f1d2c8d4a2875845ba4c54e3'
$checksumTypex64 = $checksumType
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksumx64" -checksumType64 "$checksumTypex64"