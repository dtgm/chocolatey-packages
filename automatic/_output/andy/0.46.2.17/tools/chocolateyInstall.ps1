$packageName = 'andy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_17_x86.exe'
$checksum = '82fa9ce5a9fd864e50a3701a13985ee5'
$checksumType = 'md5'
$url64 = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_17_x64.exe'
$checksum64 = 'c829e57e397886c1009e93fb90ddeeab'
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