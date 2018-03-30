$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/18.03.1/MediaInfo_CLI_18.03.1_Windows_i386.zip'
$checksum = 'cc856012c0d6be3f2c40a545911dbf0e14fe0679ae04333aa975dbf53d348a2d'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/18.03.1/MediaInfo_CLI_18.03.1_Windows_x64.zip'
$checksum64 = '40d93b37fcbfb06f4a2575e208bfd692dd9232070b4b56956b6ccf4d1e8780af'
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