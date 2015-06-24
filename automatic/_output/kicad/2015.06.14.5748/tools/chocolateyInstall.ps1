$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www2.futureware.at/~nickoe/kicad-product-r5748.c70f4a0-i686.exe'
$checksum = '70270ffde72ac8dbd8d770cd768ad45f57c18eb0'
$checksumType = 'sha1'
$url64 = 'http://www2.futureware.at/~nickoe/kicad-product-r5747.dc9ebf3-x86_64.exe'
$checksum64 = '4ce3c38953b51a5d9e85f2345c6d395102447ae8'
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