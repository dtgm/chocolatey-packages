try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
	$url = '{{DownloadUrlx64}}'
	$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $toolsDir "sre.exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Set-Content -Path ("$toolsDir\sre.exe.gui") -Value $nul
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}