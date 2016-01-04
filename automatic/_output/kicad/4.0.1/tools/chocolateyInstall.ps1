$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.kicad-pcb.org/windows/stable/kicad-product-4.0.1-i686.exe'
$checksum = '6fac5b6cead8c6410a9e39a8dceb8542d3aa188e'
$checksumType = 'sha1'
$url64 = 'http://downloads.kicad-pcb.org/windows/stable/kicad-product-4.0.1-x86_64.exe'
$checksum64 = 'b8bb9e90ef9c084b0db670aff4fcbf3909c1cee7'
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