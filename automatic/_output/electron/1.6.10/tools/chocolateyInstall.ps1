$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.10/electron-v1.6.10-win32-ia32.zip'
$checksum = '11ecb4139b98ba6115067d33c89dc4d5'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.10/electron-v1.6.10-win32-x64.zip'
$checksum64 = 'c5ff13e171c3fb1375a15832af4d0d39'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"