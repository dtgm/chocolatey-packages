$packageName = 'dolphin'
$url = 'https://dl.dolphin-emu.org/builds/dolphin-master-5.0-5977-x64.7z'
$checksum = '7833b76816a4e39770ffdeed78ea6b77989a9e869e0098cd263f3cdb9ddd15f7'
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