$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_8_2_1/ManicTimeUsb.zip'
$checksum = 'ac36d78e1019b4f298c15729f367cdb5e12ab54e9c88dde44ce62d0f4b14965d'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"