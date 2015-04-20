$packageName = 'unison'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.pps.univ-paris-diderot.fr/~vouillon/unison/unison 2.48.3.zip'
$checksum = 'db860c13b2c4fd3f858fbd677e984613bf8b2db4'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"