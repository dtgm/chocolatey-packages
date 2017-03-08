$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.14.0/bitcoin-0.14.0-win32-setup.exe'
$checksum = '95a030be5c1649023e3aa81d1cd9eabd4258f1b00f0fc51066d02126219705af'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.14.0/bitcoin-0.14.0-win64-setup.exe'
$checksum64 = 'f260d52cf2fe91c4be99ed6fcf8aa0de669ff326c5da920b7ed3a3e2ec981e0a'
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