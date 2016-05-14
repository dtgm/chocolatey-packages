$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.1.0/electron-v1.1.0-win32-ia32.zip'
$checksum = 'd17ab0a3a24a16106c84d6f2726a8e73'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.1.0/electron-v1.1.0-win32-x64.zip'
$checksum64 = '5be68ca23c1ac8926baccf3a6d9be1f5'
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