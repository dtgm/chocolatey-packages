$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dropit/files/DropIt/v8.2/DropIt_v8.2_Portable.zip'
$checksum = '0b379b7fbb450defcc98661725fa131e8edbab64f5437731ad1df0b385a85acc'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"