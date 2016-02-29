$packageName = 'ln'
$url = 'http://www.schinagl.priv.at/nt/ln/ln.zip'
$checksum = '8f8bb2064c6e9ecf03544386174b1ffe26e7e45b'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/ln/ln64.zip'
$checksum64 = '{checksumx64}'
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