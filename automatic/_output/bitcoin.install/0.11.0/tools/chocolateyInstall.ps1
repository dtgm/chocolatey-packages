$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.11.0/bitcoin-0.11.0-win32-setup.exe'
$checksum = '39e780fdf006773f265908b15219316576fb4d11'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.11.0/bitcoin-0.11.0-win64-setup.exe'
$checksum64 = '6d3b1f7405516167da6e2ca0b92fe9b1deb5c8f8'
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