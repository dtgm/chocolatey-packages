try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
	$url = '{{DownloadUrl}}'
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $installDir "$($packageName).exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Install-ChocolateyPath "$nodePath" 'Machine'  # Machine will assert admin control
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}