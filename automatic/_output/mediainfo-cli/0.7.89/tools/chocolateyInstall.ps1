$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.89/MediaInfo_CLI_0.7.89_Windows_i386.zip'
$checksum = '29d759451ddca26e812e7b0023c8ebe3de3dc69c4061d959128a25145790562d'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.89/MediaInfo_CLI_0.7.89_Windows_x64.zip'
$checksum64 = '86ba7b5b39e232d5f90cc738e67330a131d7db836eb4bead3d4d48fe9b4ac1e8'
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