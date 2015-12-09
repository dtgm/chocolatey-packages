$packageName = 'nsis.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/nsis/files/NSIS%202/2.47/nsis-2.47.zip/download'
$checksum = '80869a37c147ae393383d425b07c645986b6f021'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"