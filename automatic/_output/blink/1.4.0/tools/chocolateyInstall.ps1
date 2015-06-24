$packageName = 'blink'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$url = 'https://blink.sipthor.net/download.phtml?download&os=nt'
$checksum = 'f1dc8df9b3c177d3e3466f1f1dc5fe96'
$checksumType = 'md5'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
