$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-5.0-3021-x64.7z'
$checksum = '8156eba33c9194e20e3ca04714099cb82d01b214cf5bd86e6cf4f6d050cbe2a6'
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