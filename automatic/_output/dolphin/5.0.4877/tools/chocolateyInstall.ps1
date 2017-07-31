$packageName = 'dolphin'
$url = 'https://dl.dolphin-emu.org/builds/dolphin-master-5.0-4877-x64.7z'
$checksum = '5548338f7640bee8718109ed9e1ad5361768a07b1e1b6c4873c3fbd003daff14'
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