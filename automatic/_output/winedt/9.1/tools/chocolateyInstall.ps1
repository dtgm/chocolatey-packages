$packageName = 'winedt'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.winedt.com/download/winedt91-32.exe'
$checksum = '14664903e7333f91bbf3f85c72b8e0225acd40bd'
$checksumType = 'sha1'
$url64 = 'http://www.winedt.com/download/winedt91-64.exe'
$checksum64 = '23a6f39857528612d2660cfe1d5197eb6dbe90ab'
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