try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
	$url = '{{DownloadUrl}}'
	$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $toolsDir "$($packageName).exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Set-Content -Path ("$installFile.gui") -Value $nul
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}