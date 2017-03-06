$packageName = 'bleachbit.portable'
$url = 'https://download.bleachbit.org/BleachBit-1.12-portable.zip'
$checksum = '95767e40c22c9fe974d34941a6b08e24ab1cd50c7f00902b2a20afc01eed67bc'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"