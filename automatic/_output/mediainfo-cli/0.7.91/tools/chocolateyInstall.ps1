$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.91/MediaInfo_CLI_0.7.91_Windows_i386.zip'
$checksum = 'edf0d0dfe22d7c56b2ed5e7b620b0c82e47b806ddfeb294ebafca77124039835'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.91/MediaInfo_CLI_0.7.91_Windows_x64.zip'
$checksum64 = '72784c23d0826cf136c7d20bb6d62aa8b5cf138e90875351cec0328d7a740ce9'
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