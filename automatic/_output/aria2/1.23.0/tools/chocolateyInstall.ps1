$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.23.0/aria2-1.23.0-win-32bit-build1.zip'
$checksum = '77a50f307bca859fafc21d64c32e85ee'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.23.0/aria2-1.23.0-win-64bit-build1.zip'
$checksum64 = '66ba1a81dee77da8d5ba4889ab6b78de'
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