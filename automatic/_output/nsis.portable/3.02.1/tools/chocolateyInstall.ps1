$packageName = 'nsis.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/nsis/files/NSIS%203/3.02.1/nsis-3.02.1.zip/download'
$checksum = 'deef3e3d90ab1a9e0ef294fff85eead25edbcb429344ad42fc9bc42b5c3b1fb5'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"