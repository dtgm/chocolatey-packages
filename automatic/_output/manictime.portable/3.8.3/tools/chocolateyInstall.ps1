$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_8_3_0/ManicTimeUsb.zip'
$checksum = '956390277cd5a45a5f0ab1479066c1d2453c118748a3273cf9b1b02fe20d5610'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"