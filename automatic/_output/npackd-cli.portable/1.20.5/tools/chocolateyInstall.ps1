$packageName = 'npackd-cli.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/tim-lebedkov/packages/releases/download/initial/NpackdCL-1.20.5.zip'
$checksum = '90f62d610391ee47e6894dc2ff131553'
$checksumType = 'md5'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"