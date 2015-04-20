$packageName = 'npackd.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$urlArray = @('http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd/Npackd32-1.19.13.zip/download', 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd64/Npackd64-1.19.13.zip/download')
$url = $urlArray[0]
$checksum = 'eb35dd650d1303bd0d13a56df491ef0e2f8c90f1'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'c413f838889b33a6481dea98ba38185d6778d79e'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"