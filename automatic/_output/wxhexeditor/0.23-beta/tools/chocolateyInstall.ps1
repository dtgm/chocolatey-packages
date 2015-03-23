$packageName = 'wxhexeditor'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/wxhexeditor/files/wxHexEditor/v0.23%20Beta/wxHexEditor-v0.23-Win32.zip/download'
$checksum = '88fcb81ed99ab0338d2fd7a56be3720802f3dd6d'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"