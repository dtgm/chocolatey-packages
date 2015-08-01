$packageName = 'nixnote'
$urlArray = @('http://sourceforge.net/projects/nevernote/files/NixNote%201.5/nixnote-win32.zip/download', 'http://sourceforge.net/projects/nevernote/files/NixNote%201.5/nixnote-win64.zip/download')
$url = $urlArray[0]
$checksum = '66371098cdd689f09f824be19cb8462bd7aa6ed1'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"