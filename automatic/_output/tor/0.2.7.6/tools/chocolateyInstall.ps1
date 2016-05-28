$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/5.5.5/tor-win32-0.2.7.6.zip'
$checksum = '144b932580302004aee4c0f3f4c81d1a1495ff3bc7a60dc5425801804db4dbb1'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"