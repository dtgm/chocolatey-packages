$packageName = 'dogecoin.portable'
$url = 'https://github.com//dogecoin/dogecoin/releases/download/v1.8.2/dogecoin-1.8.2-win32.zip'
$checksum = 'ea5aacfa881adc8bf11984515604af81'
$checksumType = 'md5'
$url64 = 'https://github.com//dogecoin/dogecoin/releases/download/v1.8.2/dogecoin-1.8.2-win64.zip'
$checksum64 = 'f8d338f063e5896b43dc2e22df894946'
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