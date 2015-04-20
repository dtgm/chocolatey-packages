$packageName = 'create-synchronicity.portable'
$url = 'http://sourceforge.net/projects/synchronicity/files/Create%20Synchronicity/Create%20Synchronicity%206.0/Create_Synchronicity-6.0.zip/download'
$checksum = '734fafbfeac3a070add59ffc4375da4e2a2d620c'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"