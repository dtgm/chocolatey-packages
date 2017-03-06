$packageName = 'dirsyncpro'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/directorysync/files/DirSync%20Pro%20%28stable%29/1.52/DirSyncPro-1.52-Windows.zip'
$checksum = '{checksum}'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"