$packageName = 'aria2'
$url = 'https://github.com/tatsuhiro-t/aria2/releases/download/release-1.20.0/aria2-1.20.0-win-32bit-build1.zip'
$checksum = 'b4c8978760a0eae51914a8ed76a0f2ff'
$checksumType = 'md5'
$url64 = 'https://github.com/tatsuhiro-t/aria2/releases/download/release-1.20.0/aria2-1.20.0-win-64bit-build1.zip'
$checksum64 = 'e6e1ae54a26d95a57127c7acf00e4b15'
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