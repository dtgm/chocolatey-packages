$packageName = 'nsis.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.03/nsis-3.03.zip/download'
$checksum = 'b53a79078f2c6abf21f11d9fe68807f35b228393eb17a0cd3873614190116ba7'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"