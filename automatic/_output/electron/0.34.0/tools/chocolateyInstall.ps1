$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.34.0/electron-v0.34.0-win32-ia32.zip'
$checksum = '0564699fdac10c1242ad4d63f86b37be'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.34.0/electron-v0.34.0-win32-x64.zip'
$checksum64 = '2b095b557f417c7b35a4f0a0e9362d17'
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