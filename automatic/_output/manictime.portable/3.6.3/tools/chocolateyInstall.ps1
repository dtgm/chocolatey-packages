$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_6_3_0/ManicTimeUsb.zip'
$checksum = '32027a4f93c71bf7cc35312b6703d3ff1776e865079c383b3549118faa5ebadc'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"