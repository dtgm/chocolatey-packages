$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/cryptsync-sk/files/1.2.5/CryptSync-1.2.5.msi', 'https://sourceforge.net/projects/cryptsync-sk/files/1.2.5/CryptSync64-1.2.5.msi')
$url = $urlArray[0]
$checksum = '4909df43f13a2ce312f76564a509ec375b9d9428968bfb1d4b97546b7b988b24'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '22c4e024768a238ad1085c5ef2c0257acacc5c8ca7d0a382a7cf259bf7b8f3e0'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"