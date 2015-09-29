$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.31.1/electron-v0.31.1-win32-ia32.zip'
$checksum = '637d37513aa745d5cdc0c8b350f4f942'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.31.1/electron-v0.31.1-win32-x64.zip'
$checksum64 = 'aa4c4216e9f1d0527be57b3954ca5ad7'
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