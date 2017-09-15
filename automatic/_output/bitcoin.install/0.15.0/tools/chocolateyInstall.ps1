$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.15.0/bitcoin-0.15.0-win32-setup.exe'
$checksum = 'c35f048c9e62335bba031db91bb36b7c11d9292c89c21af219f63eac1d090c34'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.15.0/bitcoin-0.15.0-win64-setup.exe'
$checksum64 = '94d0626426810db85b342dbf801681752e474ff0aff726783cb5297b70999a45'
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