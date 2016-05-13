$packageName = 'quiterss'
$installerType = 'exe'
$url = 'http://quiterss.org/files/0.18.4/QuiteRSS-0.18.4-Setup.exe'
$checksum = '3196953a010792687fa72bb56993a0fd'
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