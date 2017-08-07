$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v3_8_4_0/ManicTimeUsb.zip'
$checksum = '0d68750ab33e9ba93d98387ca436b24a09f182d18aaec416441ac19f30e208bd'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"