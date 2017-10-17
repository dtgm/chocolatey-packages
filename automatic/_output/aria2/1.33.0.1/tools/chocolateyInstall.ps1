$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.33.0/aria2-1.33.0-win-32bit-build1.zip'
$checksum = '0557ac7a196e6ec1d401b0ef79797a57'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.33.0/aria2-1.33.0-win-64bit-build1.zip'
$checksum64 = '6e099bb283c4ec393830b5e2e8865609'
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