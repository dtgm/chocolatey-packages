$packageName = 'uniextract.portable'
$url = 'http://legroom.net///scripts/download.php?file=uniextract161_noinst'
$checksum = 'e960091d203c84c6034c14a6146f8f4bb638b11a'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"