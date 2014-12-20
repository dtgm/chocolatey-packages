$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'

Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"