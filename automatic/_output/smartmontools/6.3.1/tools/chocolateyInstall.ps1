try {
	$packageName = 'smartmontools'
	$installerType = 'exe'	
	$silentArgs = '/S'
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = @('http://sourceforge.net/projects/smartmontools/files/smartmontools/6.3/smartmontools-6.3-1.win32-setup.exe/download', 'http://sourceforge.net/projects/smartmontools/files/smartmontools/6.3/smartmontools-6.3-1.win64-setup.exe/download')
	$url = $urlArray[0]
	$url64 = $urlArray[1]
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}