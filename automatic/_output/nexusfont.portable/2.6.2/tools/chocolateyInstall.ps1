$packageName = 'nexusfont.portable'
$url = 'http://www.xiles.net/download.php?file=nexusfont_2.6.2.zip'
$checksum = '106917230926b1a988830d6b351b2ac2c0c07239'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"