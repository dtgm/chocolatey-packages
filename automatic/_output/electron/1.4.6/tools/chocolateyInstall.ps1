$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.6/electron-v1.4.6-win32-ia32.zip'
$checksum = '3774b1d15f6e4973e0d4d3e81a0a22d2'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.6/electron-v1.4.6-win32-x64.zip'
$checksum64 = 'f4f1991d46bcb02318f0d73b052b01f4'
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