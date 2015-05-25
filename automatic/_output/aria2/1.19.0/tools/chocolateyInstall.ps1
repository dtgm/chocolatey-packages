$packageName = 'aria2'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$urlArray = @('http://sourceforge.net/projects/aria2/files/stable/aria2-1.19.0/aria2-1.19.0-win-32bit-build1.zip/download', 'http://sourceforge.net/projects/aria2/files/stable/aria2-1.19.0/aria2-1.19.0-win-64bit-build1.zip/download')
$url = $urlArray[0]
$checksum = '52d8fb7ac9cf95ce941e69c07419aad4de86f72e'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '0280387b363deed88000bd99b00102788d711f2a'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"