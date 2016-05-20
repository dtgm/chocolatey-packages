$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-4.0-9375-x64.7z'
$checksum = 'dd8b2e30c0b2246ce52f9e92f8f8971c2d5f50c4'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"