try {
	$packageName = 'flac'
  $binRoot = Get-BinRoot
  $instDir = Join-Path $binRoot $packageName
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = @('http://sourceforge.net/projects/flac/files/flac-win/flac-1.3.1-win/flac-1.3.1-win.zip/download', 'http://sourceforge.net/projects/flac/files/flac-win/flac-1.3.1-win/flac-1.3.1-win.zip/download')
	$url = $urlArray[0]
	$url64 = $urlArray[1]
  Install-ChocolateyZipPackage "$packageName" "$url" "$instDir" "$url" 
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}