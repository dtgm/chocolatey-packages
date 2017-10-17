$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/7.0.6/tor-win32-0.3.1.7.zip'
$checksum = 'fb4c330361d8a7449ed4b9a30848bdad47616166af64f7ace4c71ead83464780'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"