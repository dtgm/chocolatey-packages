$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v3_8_6_0/ManicTimeUsb.zip'
$checksum = '6bc4bea6faeb93e6040cef5d8d8e3484f7c914e260a58e671fa78f7ef4de506c'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"