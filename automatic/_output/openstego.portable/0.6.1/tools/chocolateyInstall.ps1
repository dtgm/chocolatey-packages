$packageName = 'openstego.portable'
$url = 'http://sourceforge.net/projects/openstego/files/openstego/openstego-0.6.1/openstego-0.6.1.zip/download'
$checksum = '48bf7e7a017d2ae446bf6554f6be7f7d9f0c30d7'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"