try {
	$packageName = '{{PackageName}}'
	$installerType = 'exe'	
	$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = {{DownloadUrlx64}}
	$url = $urlArray[0]
	$validExitCodes = @(0)
	
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}