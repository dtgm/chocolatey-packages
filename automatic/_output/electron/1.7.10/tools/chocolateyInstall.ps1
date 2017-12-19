$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.7.10/electron-v1.7.10-win32-ia32.zip'
$checksum = '0f2c88f21be008dc3ba7861a15734a12'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.7.10/electron-v1.7.10-win32-x64.zip'
$checksum64 = 'd0ce70a93b0cf305fd52c8956b74d811'
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