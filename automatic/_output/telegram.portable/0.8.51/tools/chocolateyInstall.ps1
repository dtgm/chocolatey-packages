$packageName = 'telegram.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://updates.tdesktop.com/tsetup/tportable.0.8.51.zip'
$checksum = '279ec0ca1f01869055c05e386bf5125c6ab316bd'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"