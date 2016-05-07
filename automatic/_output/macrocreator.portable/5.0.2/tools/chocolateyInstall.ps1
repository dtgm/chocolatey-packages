$packageName = 'macrocreator.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Pulover/PuloversMacroCreator/releases/download/v5.0.2/PuloversMacroCreator-Portable.zip'
$checksum = '16096dac5f62d003af2b28a057609b96'
$checksumType = 'md5'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"