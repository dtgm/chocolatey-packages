$packageName = 'andy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_61_x86.exe'
$checksum = 'ef15d59a16ac88a8d9bae0ec772bdc62'
$checksumType = 'md5'
$url64 = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_61_x64.exe'
$checksum64 = '054c17c852c047e6ab76dbb507cb8161'
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