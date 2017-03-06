$packageName = 'hub'
$url = 'https://github.com/github/hub/releases/download/v2.2.5/hub-windows-386-2.2.5.zip'
$checksum = '6b1b2f8dca23529adc2722f7ef9302ad'
$checksumType = 'md5'
$url64 = 'https://github.com/github/hub/releases/download/v2.2.5/hub-windows-amd64-2.2.5.zip'
$checksum64 = 'ebc1504673b2c1225d44ce3b4b8703c7'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"