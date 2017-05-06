$packageName = 'bitcoinxt.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/bitcoinxt/bitcoinxt/releases/download/v0.11F/bitcoin-xt-0.11.0-win32-setup-unsigned.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = 'https://github.com/bitcoinxt/bitcoinxt/releases/download/v0.11F/bitcoin-xt-0.11.0-win64-setup-unsigned.exe'
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