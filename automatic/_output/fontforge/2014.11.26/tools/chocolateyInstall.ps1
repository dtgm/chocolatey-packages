try {
	$packageName = 'fontforge'
	$version = '2014.11.26'
	$installerType = 'exe'
	$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	$url = 'https://github.com/fontforge/fontforge/releases/download/20141126/FontForge-2014-11-26-Windows.exe'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
	Write-ChocolateySuccess $packageName	
} catch {
	Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
	throw 
}