try {
	$packageName = "blat"
  $unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = @('http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/32%20bit%20versions/Win2000%20and%20newer/blat323_32.full.zip/download', 'http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/64%20bit%20versions/blat323_64.full.zip/download')
	$url = $urlArray[0]
	$url64 = $urlArray[1]
  Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc" "$url64"
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}