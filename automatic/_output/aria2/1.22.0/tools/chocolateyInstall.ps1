$packageName = 'aria2'
$url = 'https://github.com/tatsuhiro-t/aria2/releases/download/release-1.22.0/aria2-1.22.0-win-32bit-build1.zip'
$checksum = '1ff8c098136257cb277e38b3f94caf95'
$checksumType = 'md5'
$url64 = 'https://github.com/tatsuhiro-t/aria2/releases/download/release-1.22.0/aria2-1.22.0-win-64bit-build1.zip'
$checksum64 = 'dd36a730608a8c68c85a6f719a38479c'
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