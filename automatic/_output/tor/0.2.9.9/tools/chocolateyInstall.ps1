$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/6.5/tor-win32-0.2.9.9.zip'
$checksum = '5396ff0e198b6c24cefc3eefbecab6d78ddc488e7a370f84bab0febe3b0ff30c'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"