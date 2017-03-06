$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.13.1/bitcoin-0.13.1-win32-setup.exe'
$checksum = 'a7d1d25bbc46b4f0fe333f7d3742c22defdba8db9ffd6056770e104085d24709'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.13.1/bitcoin-0.13.1-win64-setup.exe'
$checksum64 = 'c1726ccc50635795c942c7d7e51d979c4f83a3d17f8982e9d02a114a15fef419'
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