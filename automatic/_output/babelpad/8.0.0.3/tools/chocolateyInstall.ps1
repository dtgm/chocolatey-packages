$packageName = 'babelpad'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.babelstone.co.uk/Software/BabelPad.zip'
$checksum = 'a70d1ca9b447475e64a490aa4d7d3c746f6ecbc3'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"