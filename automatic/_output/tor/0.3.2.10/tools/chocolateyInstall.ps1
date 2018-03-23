$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/7.5.2/tor-win32-0.3.2.10.zip'
$checksum = '2af48ed82f98086f1f8682c57b4845df0df0afebad2b95c95d1de19f2a8abe1b'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"