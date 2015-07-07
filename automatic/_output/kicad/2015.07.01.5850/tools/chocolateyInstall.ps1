$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www2.futureware.at/~nickoe/kicad-product-r5850.51c0ae3-i686.exe'
$checksum = '27aaaabbb9146d352f4dd8ea9070471cead1f3b9'
$checksumType = 'sha1'
$url64 = 'http://www2.futureware.at/~nickoe/kicad-product-r5850.51c0ae3-x86_64.exe'
$checksum64 = '20937cdfa3d9631b1f5580f896bf0ef543660b02'
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