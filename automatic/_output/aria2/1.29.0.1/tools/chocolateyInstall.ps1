$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.29.0/aria2-1.29.0-win-32bit-build1.zip'
$checksum = '6a8b76eb5b70387223d4f35edfd9c109'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.29.0/aria2-1.29.0-win-64bit-build1.zip'
$checksum64 = '842e9c2bc1c8ad9c66fa2242995056dc'
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