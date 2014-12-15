try {
	$packageName = 'quiterss'
	$installerType = 'exe'
	$url = 'http://quiterss.org/files/0.17.1/QuiteRSS-0.17.1-Setup.exe'
	$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
	throw 
}