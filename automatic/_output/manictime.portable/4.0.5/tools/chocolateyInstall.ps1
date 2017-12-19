$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v4_0_5_0/ManicTimeUsb.zip'
$checksum = '4166009a6f2ab41a3627da8ad1291e74ef60ee1420b8fb96158d868c9e8cedcd'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"