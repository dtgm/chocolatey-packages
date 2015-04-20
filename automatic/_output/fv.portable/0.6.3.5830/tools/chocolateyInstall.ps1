$packageName = 'fv.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/fileverifier/files/fileverifier/0.6.3.5830/fv-0.6.3.5830W.zip/download'
$checksum = 'f571b1713d5478ee03b7aa1825462549d3d5d50e'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"