$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.33.1/aria2-1.33.1-win-32bit-build1.zip'
$checksum = 'ba3f49289690c552c240565995030dbd'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.33.1/aria2-1.33.1-win-64bit-build1.zip'
$checksum64 = '33bbe6db4b4288d64cc4644f220cfcf0'
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