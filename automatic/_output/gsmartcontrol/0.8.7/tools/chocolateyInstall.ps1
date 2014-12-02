try {
	$packageName = 'gsmartcontrol'
	$installerType = 'exe'
	$url = 'http://hivelocity.dl.sourceforge.net/project/gsmartcontrol/0.8.7/gsmartcontrol-0.8.7.exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}