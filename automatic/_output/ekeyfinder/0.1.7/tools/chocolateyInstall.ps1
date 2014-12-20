$packageName = 'ekeyfinder'
$packageVersion = '0.1.7'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/ekeyfinder/files/v0.1%20Beta/EKeyfinder_v0.1beta7_win32.zip/download'

Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"