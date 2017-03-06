$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.28.0/aria2-1.28.0-win-32bit-build1.zip'
$checksum = 'c6ff180ffc863082b45de08844a43578'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.28.0/aria2-1.28.0-win-64bit-build1.zip'
$checksum64 = 'a552b97b7349fa95b82e8cbced61d4fe'
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