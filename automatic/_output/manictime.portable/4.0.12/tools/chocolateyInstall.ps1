$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v4_0_12_1/ManicTimeUsb.zip'
$checksum = 'cdb323b88c1593bcb045bd239889f9a0ec9a180f34a8d1c120cfaee9b1a50f9b'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"