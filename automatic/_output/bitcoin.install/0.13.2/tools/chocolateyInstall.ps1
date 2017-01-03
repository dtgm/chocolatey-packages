$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.13.2/bitcoin-0.13.2-win32-setup.exe'
$checksum = '27c4be7f571050f6c361e44ca70553d4d2b555b69d568306b676734100d929e1'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.13.2/bitcoin-0.13.2-win64-setup.exe'
$checksum64 = '8960defc12287dd9248b99bab02a0854c072e6a3850757036c585cbd628217bf'
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