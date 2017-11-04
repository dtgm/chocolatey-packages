$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v3_8_7_0/ManicTimeUsb.zip'
$checksum = '01e644dddafff3019aa21da3ee2dc2ef8f37b6b58d89b0e46031ecc686baf180'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"