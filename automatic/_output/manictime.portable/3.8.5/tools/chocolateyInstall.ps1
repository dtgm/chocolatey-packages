$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v3_8_5_0/ManicTimeUsb.zip'
$checksum = '90fc8593388be1f7e5c2b2d2972b925f9fd1246dcc10a05346a5fa6ce76c2e07'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"