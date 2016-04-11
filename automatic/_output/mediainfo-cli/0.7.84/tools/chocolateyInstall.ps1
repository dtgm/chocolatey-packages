$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.84/MediaInfo_CLI_0.7.84_Windows_i386.zip'
$checksum = 'cb068804780089c1fe9dabdd85dfd841c4f147d3'
$checksumType = 'sha1'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.83/MediaInfo_CLI_0.7.83_Windows_x64.zip'
$checksum64 = 'b992a8f66a45f8b9c1928852db6a2c67afad7b08'
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