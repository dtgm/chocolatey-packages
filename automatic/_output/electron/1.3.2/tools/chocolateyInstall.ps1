$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.2/electron-v1.3.2-win32-ia32.zip'
$checksum = 'a70bf21765fb3471e4f96debf750ad20'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.2/electron-v1.3.2-win32-x64.zip'
$checksum64 = 'aaa34e017eeb245fbb1749f326e7c8f5'
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