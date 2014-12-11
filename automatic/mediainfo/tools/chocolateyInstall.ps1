try {
	$packageName = '{{PackageName}}'
	$installerType = 'exe'
	# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$url = '{{DownloadUrlx64}}'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}