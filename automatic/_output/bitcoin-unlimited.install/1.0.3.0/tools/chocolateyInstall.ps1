$packageName = 'bitcoin-unlimited.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.3.0-win32-setup.exe'
$checksum = '36b0a3b77d2348b9a8a88e5a25c75726dee73fcc3c96fa3bc71fec0f2cdcb640'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.3.0-win64-setup.exe'
$checksum64 = '{checksumx64}'
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