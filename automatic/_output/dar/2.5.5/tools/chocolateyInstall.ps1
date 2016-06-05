$packageName = 'dar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dar/files/dar/2.5.5/dar64-2.5.5-i386-windows.zip'
$checksum = '7c69ee8f50a8cb5ecef2d1f4538d765182dbf98657e450ac7bde14eab05c4a6d'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"