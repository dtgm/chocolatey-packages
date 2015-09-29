$packageName = 'babelpad'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.babelstone.co.uk/Software/BabelPad.zip'
$checksum = 'c1102eb3ff3601905779ce48b28f238f1c29cf03'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"