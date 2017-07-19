$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.97/MediaInfo_CLI_0.7.97_Windows_i386.zip'
$checksum = 'c0d343ef611be2d86216aec70959844210f96d5d6e58b44fac4745844c50b770'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.97/MediaInfo_CLI_0.7.97_Windows_x64.zip'
$checksum64 = '197727057fec133075b09732227fce33ae68ebc3d180a06a278595333d6b0e5d'
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