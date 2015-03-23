$packageName = 'babelpad'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.babelstone.co.uk/Software/BabelPad.zip'
$checksum = '059ef4c6fd5a974c3a2e0b2ca5aa7d69efdc8cdd'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"