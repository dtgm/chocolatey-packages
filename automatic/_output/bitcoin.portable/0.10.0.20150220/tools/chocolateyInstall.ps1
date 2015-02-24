$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.10.0/bitcoin-0.10.0-win32.zip'
$checksum = '7f32cadc9a7e0a4d7b6b42807da2654432f7379a'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.10.0/bitcoin-0.10.0-win64.zip'
$checksum64 = '7723c124cb9e386d2e5022bfc64b9807c17a5d5d'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"