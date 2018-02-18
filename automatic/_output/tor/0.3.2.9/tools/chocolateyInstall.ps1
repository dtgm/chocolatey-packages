$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/7.5/tor-win32-0.3.2.9.zip'
$checksum = 'd6886c614a12d24540c3fd8dbf84c134e45b350c21771cd9c657d6166f89dea3'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"