$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.32.0/aria2-1.32.0-win-32bit-build1.zip'
$checksum = '977ec5f571da417e18ccf1fcb6fc238d'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.32.0/aria2-1.32.0-win-64bit-build1.zip'
$checksum64 = 'a28be4d983f6579af13771cdeca8024c'
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