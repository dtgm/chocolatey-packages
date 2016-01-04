$packageName = 'andy'
$installerType = 'exe'
$url = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_13_x86.exe'
$silentArgs = '/S'
$checksum = 'aa5dd7c5dbbfdfe5b10cbd9ee65c2958'
$checksumType = 'md5'
$url64 = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_13_x64.exe'
$checksum64 = '9973e74b31b21d0d344c377c54c6df46'
$checksumType64 = 'md5'
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