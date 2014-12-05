try {
	$packageName = '{{PackageName}}'
  $binRoot = Get-BinRoot
  $instDir = Join-Path $binRoot $packageName
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = {{DownloadUrlx64}}
	$url = $urlArray[0]
	$url64 = $urlArray[1]
  Install-ChocolateyZipPackage "$packageName" "$url" "$instDir" "$url" 
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}