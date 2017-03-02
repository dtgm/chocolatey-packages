$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.93/MediaInfo_CLI_0.7.93_Windows_i386.zip'
$checksum = 'f283cb36b8beab2f34702bb1abcc26d583fb636ef1d74b50dca0775ffe0f253d'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.93/MediaInfo_CLI_0.7.93_Windows_x64.zip'
$checksum64 = '2195f90aac1d463d995c86f047bd91f55f6e4a85a62ccdf72319797c2aab9945'
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