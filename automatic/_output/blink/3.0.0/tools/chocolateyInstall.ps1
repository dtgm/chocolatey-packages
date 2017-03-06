$packageName = 'blink'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$url = 'https://blink.sipthor.net/download.phtml?download&amp;os=nt'
$checksum = ''
$checksumType = 'sha256'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
