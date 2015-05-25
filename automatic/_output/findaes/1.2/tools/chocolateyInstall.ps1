$packageName = 'findaes'
$url = 'http://iweb.dl.sourceforge.net/project/findaes/findaes-1.2.zip'
$checksum = 'd79e3abcc0258dd020d2dff8ed09185aed1088cc'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"