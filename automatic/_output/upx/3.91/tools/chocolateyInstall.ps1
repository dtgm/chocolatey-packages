$packageName = 'upx'
$url = 'http://upx.sourceforge.net/download/upx391w.zip'
$checksum = '259d16f16ba6ca48ce3e63304b922f2401650c64'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"