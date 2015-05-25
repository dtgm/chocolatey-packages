$packageName = 'ln'
$url = 'http://www.schinagl.priv.at/nt/ln/ln.zip'
$checksum = '03fac762b677f4564eff14c2dd99481ba710c585'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/ln/ln64.zip'
$checksum64 = '74fafdd77f253a5e0d6e6718e38919b024b7b7f3'
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