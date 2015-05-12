$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.10.1/bitcoin-0.10.1-win32-setup.exe'
$checksum = '50e231dee42f0f8593745223ca2cf9e7d6cf53f7'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.10.1/bitcoin-0.10.1-win64-setup.exe'
$checksum64 = 'fd9da3daaa4ef648ad9ffbf8624f92ceea399440'
$checksumType64 = 'sha1'
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