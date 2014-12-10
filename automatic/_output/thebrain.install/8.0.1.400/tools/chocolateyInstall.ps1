try {
	$packageName = 'thebrain.install'
	$installerType = 'exe'
	$url  = 'http://api.thebrain.com/?a=doDirectDownload&id=70'
	$url64 = 'http://api.thebrain.com/?a=doDirectDownload&id=76'
	$silentArgs = '-q -overwrite'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}