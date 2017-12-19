$packageName = 'quiterss'
$installerType = 'exe'
$url = 'http://quiterss.org/files/0.18.9/QuiteRSS-0.18.9-Setup.exe'
$checksum = '89ebcd331b2c7355a55bcd9e30d1ea98'
$checksumType = 'md5'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"