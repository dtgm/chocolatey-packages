$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.92/MediaInfo_CLI_0.7.92_Windows_i386.zip'
$checksum = 'ddd247bb8cc21d95af3057dcf6649aba299073802b4b3890b5c09c4278ee1eda'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.92/MediaInfo_CLI_0.7.92_Windows_x64.zip'
$checksum64 = 'f33a61894414eeba8711f88a8ced3c32c257ebdc90cc14c854c2130f78356d71'
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