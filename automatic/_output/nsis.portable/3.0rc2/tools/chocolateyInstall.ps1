$packageName = 'nsis.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203%20Pre-release/3.0rc2/nsis-3.0rc2.zip/download'
$checksum = 'f6792547b2d0e3b6638766dcefcd362673239e5d09627d7e80e8cd6275109712'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"