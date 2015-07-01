$packageName = 'dogecoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//dogecoin/dogecoin/releases/download/v1.8.2/dogecoin-1.8.2-win32-setup.exe'
$checksum = '0a149e0f8f2ccab75242294bf65962ca'
$checksumType = 'md5'
$url64 = 'https://github.com//dogecoin/dogecoin/releases/download/v1.8.2/dogecoin-1.8.2-win64-setup.exe'
$checksum64 = '4d31d0bc24b41636a15462058feda2d7'
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