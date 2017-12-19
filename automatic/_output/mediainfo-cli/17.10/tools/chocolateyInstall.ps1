$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/17.10/MediaInfo_CLI_17.10_Windows_i386.zip'
$checksum = '6d4db7a5188fcbdf51c5caff9e49442470fa32cad8afed936a62c23f68bf61cd'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/17.10/MediaInfo_CLI_17.10_Windows_x64.zip'
$checksum64 = '64fedc0c2357a880571133c6c78c1970ddaa802e1ed15251ad423cbe0e95f782'
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