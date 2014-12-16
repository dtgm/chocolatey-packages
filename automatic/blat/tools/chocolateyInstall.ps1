try {
	$packageName = "{{PackageName}}"
  $unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = {{DownloadUrlx64}}
	$url = $urlArray[0]
	$url64 = $urlArray[1]
  Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc" "$url64"
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}