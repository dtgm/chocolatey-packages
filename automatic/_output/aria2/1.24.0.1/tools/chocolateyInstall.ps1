$packageName = 'aria2'
$url = 'https://github.com/aria2/aria2/releases/download/release-1.24.0/aria2-1.24.0-win-32bit-build1.zip'
$checksum = '08b1a2605b94161445c6ddecc62b712d'
$checksumType = 'md5'
$url64 = 'https://github.com/aria2/aria2/releases/download/release-1.24.0/aria2-1.24.0-win-64bit-build1.zip'
$checksum64 = '18d6e3b6cf6302841f6b39f5556f6b2e'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64 "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"