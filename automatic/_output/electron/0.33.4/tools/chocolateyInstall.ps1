$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.4/electron-v0.33.4-win32-ia32.zip'
$checksum = '9529e80e01463da5a8aaf4b77bda4a20'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.4/electron-v0.33.4-win32-x64.zip'
$checksum64 = 'ee42bc209e30c149de953667efc4d469'
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