$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dropit/files/DropIt/v8.4/DropIt_v8.4_Portable.zip/download'
$checksum = '339fce9984f0b35e93f4a5cc1f1d573ad3560d2e832dfd6d6f46d00472621a25'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"