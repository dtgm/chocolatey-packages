$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.25.0/aria2-1.25.0-win-32bit-build1.zip'
$checksum = '87ab118caa725c8ef8f51c4fdb9749f4'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.25.0/aria2-1.25.0-win-64bit-build1.zip'
$checksum64 = '560073bbe5f38eb172cf8df442c14c8e'
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