try {
	$packageName = 'italc'
	$version = '2.0.2'
	$installerType = 'exe'
	$silentArgs = '/S'
	$url = 'https://github.com/iTALC/italc/releases/download/v2.0.2/italc-2.0.2-win32-setup.exe'
	$url64 = 'https://github.com/iTALC/italc/releases/download/v2.0.2/italc-2.0.2-win64-setup.exe'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
	throw 
}