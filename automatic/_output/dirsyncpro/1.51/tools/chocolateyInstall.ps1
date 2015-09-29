$packageName = 'dirsyncpro'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/directorysync/files/DirSync%20Pro%20%28stable%29/1.51/DirSyncPro-1.51-Windows.zip/download'
$checksum = 'ff3401d24a9b334801f9bdac6e27e6ff65c97c9f'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"