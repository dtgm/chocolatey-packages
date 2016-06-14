$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_6_2_1/ManicTimeUsb.zip'
$checksum = '32a96be68a07d2c218560353c5702b045d95ad8c7b99ecc58504fb800ef24762'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"