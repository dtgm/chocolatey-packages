$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/6.0.8/tor-win32-0.2.8.11.zip'
$checksum = '{checksum}'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"