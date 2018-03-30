$packageName = 'wxhexeditor'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/wxhexeditor/files/wxHexEditor/v0.24%20Beta/wxHexEditor-v0.24-Win64-dbg.zip/download'
$checksum = 'd75d114d7dd06c17e5c6e60d9560e642783c36f8cb27e522ccc46933bcfee2d5'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"