$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.15/electron-v1.4.15-win32-ia32.zip'
$checksum = '2c39a1705b637a5c4d9217551dcf6b60'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.15/electron-v1.4.15-win32-x64.zip'
$checksum64 = '2e4b152bd5457bc9d2e8a40dba0c6e4e'
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