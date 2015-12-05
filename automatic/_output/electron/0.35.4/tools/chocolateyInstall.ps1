$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.35.4/electron-v0.35.4-win32-ia32.zip'
$checksum = '79671cb5c8ed3d8f2b46cf919e5f2459'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.35.4/electron-v0.35.4-win32-x64.zip'
$checksum64 = 'f51b3331eafc9cb2e8759dcf3526f4f6'
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