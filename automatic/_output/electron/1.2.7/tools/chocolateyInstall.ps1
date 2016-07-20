$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.7/electron-v1.2.7-win32-ia32.zip'
$checksum = '7d546dc1eb45c28ff81bd900fa1efa28'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.7/electron-v1.2.7-win32-x64.zip'
$checksum64 = '9b2beca08d0de08ae75cfca19682bd72'
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