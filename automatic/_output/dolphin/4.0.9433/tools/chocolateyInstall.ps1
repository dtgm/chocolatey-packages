$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-4.0-9433-x64.7z'
$checksum = '4b608eb160d410b14c3f46aea5186b010d13fa0349cdff8140a91eda8dcb195d'
$checksumType = 'sha256'
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