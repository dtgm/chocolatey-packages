$packageName = 'nxt'
$url = 'https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.11.2.zip'
$checksum = 'fa5a6dbbe7265753d41e492d5db3601b2d34b1c45c7a39e7cfa45bcee1854496'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"