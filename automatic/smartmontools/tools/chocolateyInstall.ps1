try {
	$packageName = '{{PackageName}}'
	$installerType = 'exe'	
	$silentArgs = '/S'
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = {{DownloadUrlx64}}
	$url = $urlArray[0]
	$url64 = $urlArray[1]
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}