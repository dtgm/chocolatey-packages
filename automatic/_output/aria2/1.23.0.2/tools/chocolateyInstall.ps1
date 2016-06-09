$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.23.0/aria2-1.23.0-win-32bit-build2.zip'
$checksum = '731ab9045ab02766d87315dc2386d6c2'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.23.0/aria2-1.23.0-win-64bit-build2.zip'
$checksum64 = '7943ac1e5dc9d67d69295bfff4eed27d'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64 "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"