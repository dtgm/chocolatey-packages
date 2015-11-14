$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.11.2/bitcoin-0.11.2-win32-setup.exe'
$checksum = '648879c71c169046c8224685d84c5dc689436cd6'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.11.2/bitcoin-0.11.2-win64-setup.exe'
$checksum64 = '9c71679d74075e1e7d65e34d480d2e09d290d2ca'
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