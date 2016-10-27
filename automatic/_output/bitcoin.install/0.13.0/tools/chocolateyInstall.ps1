$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.13.0/bitcoin-0.13.0-win32-setup.exe'
$checksum = '213e6626ad1f7a0c7a0ae2216edd9c8f7b9617c84287c17c15290feca0b8f13b'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.13.0/bitcoin-0.13.0-win64-setup.exe'
$checksum64 = 'c94f351fd5266e07d2132d45dd831d87d0e7fdb673d5a0ba48638e2f9f8339fc'
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