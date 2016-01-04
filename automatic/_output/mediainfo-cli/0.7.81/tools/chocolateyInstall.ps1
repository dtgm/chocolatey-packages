$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.81/MediaInfo_CLI_0.7.81_Windows_i386.zip'
$checksum = '7bb536a77d3e3cb8a159ee26ab1bdb00d7c1b12a'
$checksumType = 'sha1'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.81/MediaInfo_CLI_0.7.81_Windows_x64.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"