$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_5_1_0/ManicTimeUsb.zip'
$checksum = '694de8d12891917db4a025d298eace62825fb0b2'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"