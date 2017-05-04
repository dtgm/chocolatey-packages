$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.95/MediaInfo_CLI_0.7.95_Windows_i386.zip'
$checksum = 'aaf6e6daafcb52591d950567f03f87b87b9020f83b460532db8e5deae97f87cc'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.95/MediaInfo_CLI_0.7.95_Windows_x64.zip'
$checksum64 = '040bef43fde9e6ef6ee1027a50ec0884cbc326c490b1c05d61acad98bdf17795'
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