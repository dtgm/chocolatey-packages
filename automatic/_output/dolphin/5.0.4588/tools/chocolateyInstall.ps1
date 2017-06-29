$packageName = 'dolphin'
$url = 'https://dl.dolphin-emu.org/builds/dolphin-master-5.0-4588-x64.7z'
$checksum = '0b755f0124bdab727289caf037593ae6570cd7338357ccfebeb393a4f4526f48'
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