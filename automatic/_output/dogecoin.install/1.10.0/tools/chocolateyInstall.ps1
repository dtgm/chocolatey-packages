$packageName = 'dogecoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-win32-setup-unsigned.exe'
$checksum = 'cd98a7c3cd92f55600695558a50cf5e4'
$checksumType = 'md5'
$url64 = 'https://github.com//dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-win64-setup-unsigned.exe'
$checksum64 = '60cc5622b0f3dd03a641b7448b4bdc1b'
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