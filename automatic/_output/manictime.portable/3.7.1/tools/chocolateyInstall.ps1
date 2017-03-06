$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_7_1_0/ManicTimeUsb.zip'
$checksum = '95c07e52d285a0b269a79ab9ff14c7547c1dfd0e68aa69fae1f0933d98401f5a'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"