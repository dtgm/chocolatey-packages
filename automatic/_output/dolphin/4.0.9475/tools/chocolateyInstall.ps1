$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-4.0-9475-x64.7z'
$checksum = 'c71d0402553daef26249f7076dee59e3385d341d1dcd032bd0001d3a0fc43346'
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