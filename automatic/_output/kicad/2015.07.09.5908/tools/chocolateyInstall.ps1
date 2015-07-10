$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www2.futureware.at/~nickoe/kicad-product-r5908.901e961-i686.exe'
$checksum = '94f4dde8886caa8fa02de84a86608c0b22b4f151'
$checksumType = 'sha1'
$url64 = 'http://www2.futureware.at/~nickoe/kicad-product-r5908.901e961-x86_64.exe'
$checksum64 = 'ae806bf4cdfac61a98b271f7b746d99a8eb0d9f8'
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