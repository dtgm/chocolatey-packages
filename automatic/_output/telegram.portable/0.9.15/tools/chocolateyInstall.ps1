$packageName = 'telegram.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://updates.tdesktop.com/tsetup/tportable.0.9.15.zip'
$checksum = '46fba48aeeec966db8bee06dcfc280d166ba0994'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"