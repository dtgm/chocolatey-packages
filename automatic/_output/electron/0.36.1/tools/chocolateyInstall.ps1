$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.1/electron-v0.36.1-win32-ia32.zip'
$checksum = 'aa3e5e53837c3aa9a64e4714320228fd'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.1/electron-v0.36.1-win32-x64.zip'
$checksum64 = '498dac5b84b29fc62fa77e6cc94722a7'
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