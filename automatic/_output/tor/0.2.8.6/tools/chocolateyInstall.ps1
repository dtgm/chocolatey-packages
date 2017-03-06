$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/6.0.4/tor-win32-0.2.8.6.zip'
$checksum = '7ffa98895feb78ea06643042f079306d00613481466d1c8e028921c36f6b44d3'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"