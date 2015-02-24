$packageName = 'blink'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$url = 'https://blink.sipthor.net/download.phtml?download&os=nt'
$checksum = 'c49076d7f1d2c8d4a2875845ba4c54e3'
$checksumType = 'md5'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
