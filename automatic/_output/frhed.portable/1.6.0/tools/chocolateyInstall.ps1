$packageName = 'frhed.portable'
$url = 'http://tcpdiag.dl.sourceforge.net/project/frhed/1. Stable Releases/1.6.0/Frhed-1.6.0-exe.zip'
$checksum = 'ae77fdd1b68d1da2d4a2f61574da4685c29a745d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"