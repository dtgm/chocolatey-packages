$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.kicad-pcb.org/windows/stable/kicad-product-4.0.3-i686.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = 'http://downloads.kicad-pcb.org/windows/stable/kicad-product-4.0.3-x86_64.exe'
$checksum64 = '{checksumx64}'
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