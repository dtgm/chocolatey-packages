$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.92.1/MediaInfo_CLI_0.7.92.1_Windows_i386.zip'
$checksum = '8fcaad03f65d220cda899ac62f274be8d12ec164f1ceb6be27bce4d9beb2d02a'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.92.1/MediaInfo_CLI_0.7.92.1_Windows_x64.zip'
$checksum64 = '48666d07afebe187e349f2a3c3ff1fe5d22754f5f50118d6ebca6d43d39d2ff6'
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