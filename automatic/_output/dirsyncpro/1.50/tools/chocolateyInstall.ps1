$packageName = 'dirsyncpro'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/directorysync/files/DirSync%20Pro%20%28stable%29/1.50/DirSyncPro-1.50-Windows.zip/download'
$checksum = 'c82903de812dc8fa73f2b11536aeef232cf7d5ee'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"