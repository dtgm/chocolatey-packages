$packageName = 'unison'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.pps.univ-paris-diderot.fr/~vouillon/unison/unison 2.48.4.zip'
$checksum = '8b037bddb50c9b0337782da399c5419b9c06b7aa955ecfb9edfcabfc902bdfb2'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"