$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v4_0_13_0/ManicTimeUsb.zip'
$checksum = '3e2ad804c04683c4d57d70be8ddd154e83ad65e137b01d0812757411c6c18cf7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"