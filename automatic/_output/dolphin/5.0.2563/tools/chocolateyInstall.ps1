$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-5.0-2563-x64.7z'
$checksum = '2c4812a5d8cc93cfb6bbedc20db8c47613550ffd62606fe2a18eaddc609f36e9'
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