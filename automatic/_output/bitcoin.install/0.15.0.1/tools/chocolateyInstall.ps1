$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.15.0.1/bitcoin-0.15.0.1-win32-setup.exe'
$checksum = 'f3e7ef9ac9d510a185efb0f0253dc1f49d627768999a66f13e86de4c38854680'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.15.0.1/bitcoin-0.15.0.1-win64-setup.exe'
$checksum64 = 'f0aebade2b43e253ad66fd920e00524048f5a9b9933936e735844d316433791a'
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