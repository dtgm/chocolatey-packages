$packageName = 'dogecoin.portable'
$url = 'https://github.com//dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-win32.zip'
$checksum = 'e79ab13254b19a6a7082cab7a94e33a7'
$checksumType = 'md5'
$url64 = 'https://github.com//dogecoin/dogecoin/releases/download/v1.10.0/dogecoin-1.10.0-win64.zip'
$checksum64 = '7c23049bf8783d5dad13403069374419'
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