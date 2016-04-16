$packageName = 'ln'
$url = 'http://www.schinagl.priv.at/nt/ln/ln.zip'
$checksum = '9b466500fded7d98c664fc5bb85917e8e60d270f'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/ln/ln64.zip'
$checksum64 = '0ff5793d490296ee5032dbf8813d31c32f2650fd'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"