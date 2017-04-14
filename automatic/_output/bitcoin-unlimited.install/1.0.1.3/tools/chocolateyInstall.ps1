$packageName = 'bitcoin-unlimited.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.3-win32-setup.exe'
$checksum = 'a8db3159799309439f31e4c60faab0e2ac24819e918f7f3402cec76c0b009d68'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.3-win64-setup.exe'
$checksum64 = '2fd35bdb9bf50bc78a7cba2ee4890b07475737b2d6d46d22cc68dccae85b9a6e'
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