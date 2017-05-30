$packageName = 'dolphin'
$url = 'https://dl.dolphin-emu.org/builds/dolphin-master-5.0-3963-x64.7z'
$checksum = '4cfc860528bb1708d9530255ff89648dd35865c354d51d1c4c81410f0ee02b15'
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