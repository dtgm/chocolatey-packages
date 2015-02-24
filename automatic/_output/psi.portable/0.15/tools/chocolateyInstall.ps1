$packageName = 'psi.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win32.zip/download', 'http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win64.zip/download')
$url = $urlArray[0]
$checksum = '{checksum}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
