$packageName = 'blink'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$url = 'https://blink.sipthor.net/download.phtml?download&os=nt'
$checksum = 'ae2e89bd39ccfb7a64ef587e7038651b'
$checksumType = 'md5'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
