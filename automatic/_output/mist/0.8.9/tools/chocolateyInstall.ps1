$packageName = 'mist'
$url = 'https://github.com/ethereum/mist/releases/download/v0.8.9/Mist-win32-0-8-9.zip'
$checksum = '56e27c14e98b4617b8adcaab59a36c8d8041ca93526a3b8e827a610ac6003dfc'
$checksumType = 'sha256'
$url64 = 'https://github.com/ethereum/mist/releases/download/v0.8.9/Mist-win64-0-8-9.zip'
$checksum64 = '42a07e58d6929c0741a60e19c331ed5e5557f873fffaf9668ff81321059689e3'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"