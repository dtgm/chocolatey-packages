$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.79/MediaInfo_CLI_0.7.79_Windows_i386.zip'
$checksum = '55672c29fea2100df7a76300a776988185445cc1'
$checksumType = 'sha1'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.79/MediaInfo_CLI_0.7.79_Windows_x64.zip'
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