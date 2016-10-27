$packageName = 'dar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dar/files/dar/2.5.6/dar64-2.5.6-i386-windows.zip'
$checksum = '41820d0993cc9942aba9799f2f049bfaa1446f9f07292a61fd7c89577cd55fe4'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"