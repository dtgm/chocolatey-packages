$packageName = 'andy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_15b_x86.exe'
$checksum = '362ff541ddf02551be07e3c39dbec39a'
$checksumType = 'md5'
$url64 = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_15b_x64.exe'
$checksum64 = '122fca80ddddf1316c98083ec403ff20'
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