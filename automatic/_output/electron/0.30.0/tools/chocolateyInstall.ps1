$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.30.0/electron-v0.30.0-win32-ia32.zip'
$checksum = '19ccf431911f90bcd3d4383411761ab4'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.30.0/electron-v0.30.0-win32-x64.zip'
$checksum64 = '144a66a64ef8b70c789133e8b8515481'
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