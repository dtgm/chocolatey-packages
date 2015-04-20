$packageName = 'npackd-cli.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.NpackdCL/NpackdCL-1.19.13.zip/download'
$checksum = '69a1f83606a067140d3700321f3cb1dcbcad38e4'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `