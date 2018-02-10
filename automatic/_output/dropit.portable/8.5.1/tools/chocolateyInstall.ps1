$packageName = 'dropit.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dropit/files/DropIt/v8.5.1/DropIt_v8.5.1_Portable.zip/download'
$checksum = '6f2cbdcff44fb4e2b9ee08cbc1c8721af4df2cc493b8a1225de3c52c87fe8388'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"