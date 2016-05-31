$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.86/MediaInfo_CLI_0.7.86_Windows_i386.zip'
$checksum = 'c980b08282764302910a474aefa03535e1f7986fefaaecce256ed81230353c7e'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.86/MediaInfo_CLI_0.7.86_Windows_x64.zip'
$checksum64 = '3217994fdd1081481b5c8e102b6d5c525e6197f1631d2eb405e05e617259bbb5'
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