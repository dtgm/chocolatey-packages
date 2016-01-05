$packageName = 'dar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/dar/files/dar/2.5.3/dar64-2.5.3-i386-windows.zip/download'
$checksum = '513ad464720032f93749c94e35115795fc5bc265'
$checksumType = 'sha1'
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