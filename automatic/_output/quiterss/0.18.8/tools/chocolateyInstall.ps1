$packageName = 'quiterss'
$installerType = 'exe'
$url = 'http://quiterss.org/files/0.18.8/QuiteRSS-0.18.8-Setup.exe'
$checksum = '84347a12ee9e3c7a026378ee66f35c05'
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