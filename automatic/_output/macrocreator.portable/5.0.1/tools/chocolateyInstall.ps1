$packageName = 'macrocreator.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Pulover/PuloversMacroCreator/releases/download/v5.0.1/MacroCreator-Portable.zip'
$checksum = '5a03e78ff06ffc0411ad0a093f1bc6a5'
$checksumType = 'md5'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"