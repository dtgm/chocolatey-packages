$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_7_3_0/ManicTimeUsb.zip'
$checksum = '6e7b727b09e1becfa04c36df1e26726012fb0a6e69888bec5d674f9891e77083'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"