$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/dropit/files/DropIt/v8.1.1/DropIt_v8.1.1_Portable.zip/download'
$checksum = 'd367e06982300655bab4df3d4f45e8b97d6f0e7f'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"