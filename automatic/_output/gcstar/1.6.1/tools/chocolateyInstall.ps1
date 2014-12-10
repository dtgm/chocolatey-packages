try {
	$packageName = 'gcstar'
	$installerType = 'exe'	
	$silentArgs = '/S'
	$url = 'http://download.gna.org/gcstar/win32/GCstar_1.6.1_Setup.exe'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
	throw 
}