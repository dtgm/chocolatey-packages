$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.98/MediaInfo_CLI_0.7.98_Windows_i386.zip'
$checksum = '54497656c4a64ec8fda7c29fe7c0cc8cfe7b2d57c89dd891949326805117e586'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.98/MediaInfo_CLI_0.7.98_Windows_x64.zip'
$checksum64 = 'e1903b59ea9fe6f301b7634312bd536414c95a29e88dde8df9ea4070b5ae9ecc'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"