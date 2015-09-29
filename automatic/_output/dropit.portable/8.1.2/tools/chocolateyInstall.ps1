$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/dropit/files/DropIt/v8.1.2/DropIt_v8.1.2_Portable.zip/download'
$checksum = '04982d8068ada8004d022ae49bca9b411ee8ac6b'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"