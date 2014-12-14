try {
	$packageName = '{{PackageName}}'
	$installerType = 'exe'
	$url = '{{DownloadUrl}}'
	$silentArgs = '/S'
	$validExitCodes = @(0)

	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}
