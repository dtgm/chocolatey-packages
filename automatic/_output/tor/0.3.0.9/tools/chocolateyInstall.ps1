$packageName = 'tor'
$url = 'https://www.torproject.org/dist/torbrowser/7.0.2/tor-win32-0.3.0.9.zip'
$checksum = '3c49ff04321a4b71e2bf25cdabf74acdb1b31957afde942be6a19cd96ab8c8c8'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"