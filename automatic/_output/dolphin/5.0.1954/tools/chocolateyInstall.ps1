$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-5.0-1954-x64.7z'
$checksum = 'eea871882fce0f3bea58ccdcb47084455a7c3dd7f7a6bd2ec05ac37ccd392087'
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