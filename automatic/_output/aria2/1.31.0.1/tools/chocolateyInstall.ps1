$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.31.0/aria2-1.31.0-win-32bit-build1.zip'
$checksum = 'b9ea9ddbc784d91599a58b6497493705'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.31.0/aria2-1.31.0-win-64bit-build1.zip'
$checksum64 = 'bc8aafd99bd5d04cad545600706defa4'
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