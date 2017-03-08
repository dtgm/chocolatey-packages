$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/6.5.1/tor-win32-0.2.9.10.zip'
$checksum = '56e639cd73c48f383fd638568e01ca07750211fca79c87e668cf8baccbf9d38a'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"