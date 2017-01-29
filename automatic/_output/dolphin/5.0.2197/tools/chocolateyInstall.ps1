$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-5.0-2197-x64.7z'
$checksum = '2a00fa53274b3c75546f554095950978693c5ce667e81fa2d74661df222d8b66'
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