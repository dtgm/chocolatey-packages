$packageName = 'npackd.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$urlArray = @('http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd/Npackd32-1.20.5.zip/download', 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd64/Npackd64-1.20.5.zip/download')
$url = $urlArray[0]
$checksum = '88f5e56fd38b89c5ad5d57cdcd9360317d4c46b1'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'e2df37e2d3db36b08b680ec65b66d831902733cd'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"