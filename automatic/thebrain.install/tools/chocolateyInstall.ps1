try {
	$packageName = '{{PackageName}}'
	$installerType = 'exe'
	$url  = '{{DownloadUrl}}'
	$url64 = '{{DownloadUrlx64}}'
	$silentArgs = '-q -overwrite'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes "$validExitCodes"
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}