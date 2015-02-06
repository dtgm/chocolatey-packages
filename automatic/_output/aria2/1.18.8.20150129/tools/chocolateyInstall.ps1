$packageName = 'aria2'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/aria2/files/stable/aria2-1.18.8/aria2-1.18.8-win-32bit-build1.zip/download', 'http://sourceforge.net/projects/aria2/files/stable/aria2-1.18.8/aria2-1.18.8-win-64bit-build1.zip/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc" "$url64"
