$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/6.0.6/tor-win32-0.2.8.9.zip'
$checksum = 'a7d753e6ce4e75c725fd2f44a1af4f81e9fb96ad370d0e72c0a64000085c9ac8'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"