$packageName = 'autocomplete'
$url = 'https://github.com//Uberi/Autocomplete/releases/download/1.3/Autocomplete.zip'
$checksum = 'ca6a4192c25aa58247e25571a3bf08db'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"