$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.85/MediaInfo_CLI_0.7.85_Windows_i386.zip'
$checksum = '6bfd64dd16c3ffd71a6ee84e1f3293b6ab74aa9d'
$checksumType = 'sha1'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.85/MediaInfo_CLI_0.7.85_Windows_x64.zip'
$checksum64 = '44a5f5094aa74aad979e5843a81f6b5519f5484d'
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