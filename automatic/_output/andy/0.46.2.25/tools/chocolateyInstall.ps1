$packageName = 'andy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_25_x86.exe'
$checksum = '4869a1b33c21789ba7b397135a63df64'
$checksumType = 'md5'
$url64 = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_25_x64.exe'
$checksum64 = '4aabb091d955fe4e0eff05b97ba4d9c7'
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