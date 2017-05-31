$packageName = 'dispcalgui.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dispcalgui/files/release/3.3.0.0/DisplayCAL-3.3.0.0-win32.zip/download'
$checksum = '37f0065c34e97d363de57400f8bc7db4bad3520940076fd3ddb0911f96436763'
$checksumType = 'sha256'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"