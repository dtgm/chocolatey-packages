$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.87/MediaInfo_CLI_0.7.87_Windows_i386.zip'
$checksum = '3a2e9cfab25531d2a4ec467cc7080d467acde90e2d12ee9a1e98d0af2a39f82d'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.87/MediaInfo_CLI_0.7.87_Windows_x64.zip'
$checksum64 = 'f89dafec6edc3a3ae6cfe48e38ebeb5cfdb84eda55284d2a41c9871386306a1c'
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