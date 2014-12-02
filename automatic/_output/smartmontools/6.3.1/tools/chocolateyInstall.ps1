try {
	$packageName = 'smartmontools'
	$installerType = 'exe'
	$url = 'http://softlayer-dal.dl.sourceforge.net/project/smartmontools/smartmontools/6.3/smartmontools-6.3-1.win32-setup.exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}