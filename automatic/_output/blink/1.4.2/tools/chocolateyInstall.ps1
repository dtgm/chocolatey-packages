$packageName = 'blink'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$url = 'https://blink.sipthor.net/download.phtml?download&os=nt'
$checksum = '8013e12de9ca0a29a79528e12d21b0f5'
$checksumType = 'md5'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
