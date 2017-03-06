$packageName = 'dispcalgui.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dispcalgui/files/release/3.1.5.0/DisplayCAL-3.1.5.0-win32.zip'
$checksum = '7ba772d4af2ea1cd601d1b362d147fa34a54a6b69dc89519dd4a31454ec8e7c4'
$checksumType = 'sha256'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"