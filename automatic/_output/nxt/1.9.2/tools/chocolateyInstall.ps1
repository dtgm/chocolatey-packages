$packageName = 'nxt'
$url = 'https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.9.2.zip'
$checksum = '4fe0520e5b4d0fe244dc9d8ab7943c1a107a7e4227ce4ae9f3236ae1dcc1a8ab'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"