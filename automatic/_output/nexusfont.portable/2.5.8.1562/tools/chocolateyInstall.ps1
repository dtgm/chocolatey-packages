$packageName = 'nexusfont.portable'
$url = 'http://www.xiles.net/pds/nexusfont2.5.8.zip'
$checksum = '279310de43bcf7a6caaf822595971b9015268976'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"