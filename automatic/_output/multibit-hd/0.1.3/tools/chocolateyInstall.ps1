$packageName = 'multibit-hd'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.3//multibit-hd-windows-0.1.3.exe'
$checksum = 'f2c60827f0c28231f1c99932f44c801e5e9c8dfb'
$checksumType = 'sha1'
$url64 = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.3//multibit-hd-windows-x64-0.1.3.exe'
$checksum64 = '646f0fa123f62b18d00b775571f18874625b10a6'
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