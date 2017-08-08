$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/7.0.4/tor-win32-0.3.0.10.zip'
$checksum = 'f5f72f4c88d123e8a1a124e5b29e88ab80c0a7efa12db71d88ed7e1ee1bbf99f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"