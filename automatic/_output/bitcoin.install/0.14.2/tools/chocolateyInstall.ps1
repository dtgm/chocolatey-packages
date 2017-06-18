$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/bitcoin-core-0.14.2/bitcoin-0.14.2-win32-setup.exe'
$checksum = '522bf19ff2ac1a3f100194914071cf6d1a15076268c5c847b2f891277f427af6'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.14.2/bitcoin-0.14.2-win64-setup.exe'
$checksum64 = '3a0057e4d6ca172566a93192234ef28916cbb052db9e15997569d9c08502c49a'
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