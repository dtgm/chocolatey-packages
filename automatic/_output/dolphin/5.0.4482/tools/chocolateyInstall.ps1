$packageName = 'dolphin'
$url = 'https://dl.dolphin-emu.org/builds/dolphin-master-5.0-4482-x64.7z'
$checksum = 'eac489c936cd5aef314d2114a5c6be320397a1edf21400117116fed2b7d31ad9'
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