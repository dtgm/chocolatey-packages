$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.14.1/bitcoin-0.14.1-win32-setup.exe'
$checksum = '875f5995a47e5a1b1becaa02591400fc90bfc1a471b15eed71232b161efcdb1b'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.14.1/bitcoin-0.14.1-win64-setup.exe'
$checksum64 = '3ebf2c58e3b60dd79153bf2a043a5f90402b8067b21a93dd88763c96dd8baba6'
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