$packageName = 'nsis.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.01/nsis-3.01.zip/download'
$checksum = 'daa17556c8690a34fb13af25c87ced89c79a36a935bf6126253a9d9a5226367c'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"