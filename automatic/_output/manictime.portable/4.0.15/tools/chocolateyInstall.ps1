$packageName = 'manictime.portable'
$url = 'https://cdn.manictime.com/setup/v4_0_15_0/ManicTimeUsb.zip'
$checksum = '7ebc547081457deff77df71df804477d976173de897920825477c299c036a930'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"