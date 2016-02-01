$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.82/MediaInfo_CLI_0.7.82_Windows_i386.zip'
$checksum = '29e26611969de7ee649e6a023aab10cb4722cc8a'
$checksumType = 'sha1'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.82/MediaInfo_CLI_0.7.82_Windows_x64.zip'
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