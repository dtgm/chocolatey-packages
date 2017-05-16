$packageName = 'bitcoin-unlimited.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.2.0-win32-setup.exe'
$checksum = '1cf4ea2f491d974613bc07bc4cfa0a1556a89e299c24f1ce2d3f7e4b233442e9'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.2.0-win64-setup.exe'
$checksum64 = 'e2e280d567ba8f971e94c45ddfc1cbcc56ad5641ff24519e288f1edf772992e7'
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