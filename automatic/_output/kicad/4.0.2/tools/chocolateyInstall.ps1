$packageName = 'kicad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.kicad-pcb.org/windows/stable/kicad-product-4.0.2-i686.exe'
$checksum = '59ea1e4ff049565e94ba3e024486008b7dfad51b'
$checksumType = 'sha1'
$url64 = 'http://downloads.kicad-pcb.org/windows/stable/kicad-product-4.0.2-x86_64.exe'
$checksum64 = 'd250e5806f46c86b87ac697ebdc1713ecce278b2'
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