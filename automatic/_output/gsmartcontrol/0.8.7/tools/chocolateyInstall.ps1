try {
	$packageName = 'gsmartcontrol'
	$installerType = 'exe'
	$silentArgs = '/S'
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = @('http://sourceforge.net/projects/gsmartcontrol/files/0.8.7/gsmartcontrol-0.8.7.exe/download', 'http://sourceforge.net/projects/gsmartcontrol/files/0.8.7/gsmartcontrol-0.8.7.exe/download')
	$url = $urlArray[0]
	$url64 = $urlArray[1]
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}