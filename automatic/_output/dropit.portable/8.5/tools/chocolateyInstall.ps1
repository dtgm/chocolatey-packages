$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dropit/files/DropIt/v8.5/DropIt_v8.5_Portable.zip/download'
$checksum = '6c3222eec15df4985c91922adf311113847ca5b4817ede1b66b1aec5237bd10a'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"