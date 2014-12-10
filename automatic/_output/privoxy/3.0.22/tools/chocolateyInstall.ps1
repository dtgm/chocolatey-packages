try {
	$packageName = 'privoxy'
	$packageVersion = '3.0.22'
	$installerType = 'exe'	
	$silentArgs = '/S'
	$url = 'http://sourceforge.net/projects/ijbswa/files/Win32/3.0.22%20%28stable%29/privoxy_setup_3.0.22.exe/download'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}