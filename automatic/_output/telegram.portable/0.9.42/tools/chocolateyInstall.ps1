$packageName = 'telegram.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://updates.tdesktop.com/tsetup/tportable.0.9.42.zip'
$checksum = '59a6214e7a46346c90bb5146bdd72c0aaace7a42'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"