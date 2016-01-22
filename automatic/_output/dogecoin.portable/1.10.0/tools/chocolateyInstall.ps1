$packageName = 'dogecoin.portable'
$url = 'https://github.com//dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-win32.zip'
$checksum = 'a7675b78f46f1f761fdbfd46d64958b5'
$checksumType = 'md5'
$url64 = 'https://github.com//dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-win64.zip'
$checksum64 = '418a204bee47e2d78ac95aaa65dfb53f'
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