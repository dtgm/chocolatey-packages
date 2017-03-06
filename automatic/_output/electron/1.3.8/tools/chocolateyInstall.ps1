$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.8/electron-v1.3.8-win32-ia32.zip'
$checksum = '648424bcb7c5bc84e81de664000989d2'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.8/electron-v1.3.8-win32-x64.zip'
$checksum64 = '0ed7bdb6e31d50ad1a93e0cb2c272acc'
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