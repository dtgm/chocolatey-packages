try {
	$packageName = '{{PackageName}}'
	$installerType = 'exe'
	$url = '{{DownloadUrl}}'
	$silentArgs = '/S'
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}