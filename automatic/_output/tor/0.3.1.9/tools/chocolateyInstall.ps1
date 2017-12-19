$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/7.0.11/tor-win32-0.3.1.9.zip'
$checksum = 'faf28efb606455842bda66ca369287a116b6d6e5ad3720ebed9337da0717f1b4'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"