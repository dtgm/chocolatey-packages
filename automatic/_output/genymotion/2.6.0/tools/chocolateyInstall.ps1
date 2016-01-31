$packageName = 'genymotion'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://files2.genymotion.com/genymotion/genymotion-2.6.0/genymotion-2.6.0.exe'
$checksum = '9cb4aa6bf0ee7dcf2a5d30f5804c509a22e49e65'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"