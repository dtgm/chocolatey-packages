$packageName = '0install.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://0install.de/files/zero-install.zip'
$checksum = '400dce4d350f6ca2c7f38bfada4eb632c8a82b55010d5356644a3a6ac1c1c83e'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"