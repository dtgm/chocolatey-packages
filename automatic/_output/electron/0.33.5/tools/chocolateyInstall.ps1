$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.5/electron-v0.33.5-win32-ia32.zip'
$checksum = '188178f18db0fca00ef82c94fa9958f9'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.5/electron-v0.33.5-win32-x64.zip'
$checksum64 = '547a40e2267a0cd547f039d1dbccd481'
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