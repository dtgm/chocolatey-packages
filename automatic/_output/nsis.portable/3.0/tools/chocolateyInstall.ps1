$packageName = 'nsis.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.0/nsis-3.0.zip/download'
$checksum = '87b1d36765bb2f6e0fe531fdd8c9282b28e86b88d1f6b61842777bb791955372'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"