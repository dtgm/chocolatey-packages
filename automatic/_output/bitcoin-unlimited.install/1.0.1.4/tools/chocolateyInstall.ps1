$packageName = 'bitcoin-unlimited.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.4-win32-setup.exe'
$checksum = '89c8b28a1ba61076dfea93a6850c016d9a0de1cde2d972aa1fa961eed863eaea'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.4-win64-setup.exe'
$checksum64 = 'f7869992c6461bc00aff911b76e5e648b67d67cb7618a1cde4c2cf1b6ccbb06f'
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