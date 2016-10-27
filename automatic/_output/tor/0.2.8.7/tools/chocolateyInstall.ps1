$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/6.0.5/tor-win32-0.2.8.7.zip'
$checksum = 'e7e30c9743d9c20852a375cd838f52b6aff4f3bbf4e5410a9a78ce7019af0dcc'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"