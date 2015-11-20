$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.35.1/electron-v0.35.1-win32-ia32.zip'
$checksum = 'fb74224454dbbe092817c99be4c6d7d7'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.35.1/electron-v0.35.1-win32-x64.zip'
$checksum64 = '88771b5e6d31c100b2b55e0e3f82502b'
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