$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.96/MediaInfo_CLI_0.7.96_Windows_i386.zip'
$checksum = 'dca3113a80f431d5f90b04aa3cfc0b8f41509d06c126a165dc9a7c2575eeaa95'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.96/MediaInfo_CLI_0.7.96_Windows_x64.zip'
$checksum64 = 'e8123ea19b9a2f8f1f2731a25cfdf2d0d692828a5d969e00d7d5c82af6782b49'
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