try {
	$packageName = 'rssowl'
	$installerType = 'exe'
	$url = 'https://github.com/rssowl/RSSOwl/releases/download/2.2.1/RSSOwl.2.2.1.Windows.Installer.exe'
	$silentArgs = '/S'
	$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
	throw 
}