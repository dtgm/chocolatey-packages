$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.15.1/bitcoin-0.15.1-win32-setup.exe'
$checksum = 'cc7a31d8fece1462955bddef87945420721e42cfe6af589a36547b0940851765'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.15.1/bitcoin-0.15.1-win64-setup.exe'
$checksum64 = '905a5999fb52b083d7e3bedb2dc6704ca641823f81865db58a55a6a20b454d8c'
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