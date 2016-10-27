$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_6_7_0/ManicTimeUsb.zip'
$checksum = 'dbd453cae6615362a74de5668fc7f2598660b6464e0e9c7964223974c1698057'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"