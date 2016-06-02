$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-4.0-9424-x64.7z'
$checksum = 'c8fdc26d500c79422ecd31e5df6f1da9c2b879a34d56650db5aaa498b0de9e97'
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