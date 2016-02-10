$packageName = 'ln'
$url = 'http://www.schinagl.priv.at/nt/ln/ln.zip'
$checksum = '494706875ce59175cf1fcf5cb0db9d671e3a214a'
$checksumType = 'sha1'
$url64 = 'http://www.schinagl.priv.at/nt/ln/ln64.zip'
$checksum64 = 'b274ad801edee08aa2e18ae31e9199ed43c46c4b'
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