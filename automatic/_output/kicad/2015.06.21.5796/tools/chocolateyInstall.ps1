$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www2.futureware.at/~nickoe/kicad-product-r5796.fe7bc27-i686.exe'
$checksum = '873a16c09028602c65c1611586b4a5112c6cc876'
$checksumType = 'sha1'
$url64 = 'http://www2.futureware.at/~nickoe/kicad-product-r5796.fe7bc27-x86_64.exe'
$checksum64 = '3be4b36f599bc4cfe95ae9debe89e74e31caedad'
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