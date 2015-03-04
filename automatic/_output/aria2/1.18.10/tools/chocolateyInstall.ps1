$packageName = 'aria2'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/aria2/files/stable/aria2-1.18.10/aria2-1.18.10-win-32bit-build1.zip/download', 'http://sourceforge.net/projects/aria2/files/stable/aria2-1.18.10/aria2-1.18.10-win-64bit-build1.zip/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '87adc0bb14900abe8bec48dae7e6a89ee7b4b040'
$checksumType = 'sha1'
$checksum64 = '739248492be51b54bc0a50e4c96e5a19c9179536'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
