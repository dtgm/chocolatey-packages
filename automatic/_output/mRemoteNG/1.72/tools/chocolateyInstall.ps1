try {
	$packageName = 'mRemoteNG'
	$installerType = 'exe'
	$url  = 'http://downloads.mremoteng.org/mRemoteNG-Installer-1.72.exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}

