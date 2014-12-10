try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
	$installerType = 'exe'	
	$silentArgs = '/S'
	$url = '{{DownloadUrlx64}}'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}