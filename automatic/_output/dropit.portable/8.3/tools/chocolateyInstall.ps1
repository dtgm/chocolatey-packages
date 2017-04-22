$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dropit/files/DropIt/v8.3/DropIt_v8.3_Portable.zip'
$checksum = 'e93cdcbceaaec4f74d46459120f22c66bbc337c022c0ac9c0b7f4aeb4b683e99'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"