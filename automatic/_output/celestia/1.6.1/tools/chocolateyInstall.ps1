try {
	$packageName = 'celestia'
	$installerType = 'exe'	
	$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = @('http://sourceforge.net/projects/celestia/files/Celestia-win32-bin/1.6.1/celestia-win32-1.6.1.exe/download', 'http://sourceforge.net/projects/celestia/files/Celestia-win32-bin/1.6.1/celestia-win32-1.6.1.exe/download')
	$url = $urlArray[0]
	$validExitCodes = @(0)
	
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}