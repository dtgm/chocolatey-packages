$packageName = 'dirsyncpro'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/directorysync/files/DirSync%20Pro%20%28stable%29/1.53/DirSyncPro-1.53-Windows.zip/download'
$checksum = '8fdbb903dce5dee9af9156799bc91f31a66e25b8289ca6673aa42747a8701a8b'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"