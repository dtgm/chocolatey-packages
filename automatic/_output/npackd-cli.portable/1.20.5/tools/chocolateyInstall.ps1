$packageName = 'npackd-cli.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.NpackdCL/NpackdCL-1.20.5.zip/download'
$checksum = '0898c9989d06b462b3d2fbfb3b22717b740c480c'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `