$packageName = 'macrocreator.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Pulover/PuloversMacroCreator/releases/download/v5.0.0/PuloversMacroCreator-Portable.zip'
$checksum = 'b309fbc19932a2eb178767baa9d5ca83'
$checksumType = 'md5'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"