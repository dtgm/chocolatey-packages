$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www2.futureware.at/~nickoe/kicad-product-r5754.28004ab-i686.exe'
$checksum = 'a09193ebfc1f34ae8e04cbf3b8299d8529ef479c'
$checksumType = 'sha1'
$url64 = 'http://www2.futureware.at/~nickoe/kicad-product-r5754.28004ab-x86_64.exe'
$checksum64 = '6466aa53217b89aa8897567e53565530003ef6a4'
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