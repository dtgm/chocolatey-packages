$packageName = 'litecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.litecoin.org/litecoin-0.13.2/win/litecoin-0.13.2-win32-setup.exe'
$checksum = '958d821d27273fa0d1544c09ee3c0299649f0dce99fe4422cc5420c5144056c7'
$checksumType = 'sha256'
$url64 = 'https://download.litecoin.org/litecoin-0.13.2/win/litecoin-0.13.2-win64-setup.exe'
$checksum64 = 'd3b1628f12050582480f13d232ffe5b62caae9d4d7ac42c1559b706a50884818'
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