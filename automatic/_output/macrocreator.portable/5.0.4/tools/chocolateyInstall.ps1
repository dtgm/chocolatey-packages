$packageName = 'macrocreator.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Pulover/PuloversMacroCreator/releases/download/v5.0.4/PuloversMacroCreator-Portable.zip'
$checksum = '9ea46034cd2c949d26beb76d19c2dda8'
$checksumType = 'md5'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"