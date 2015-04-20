$packageName = 'ln'
$url = 'http://www.schinagl.priv.at/nt/ln/ln.zip'
$checksum = '086d05eca2832f74c2299b94ed17780fd11a0b45'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/ln/ln64.zip'
$checksum64 = '7e7538a5f2747b7c37a244a3303095ebb1f81931'
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