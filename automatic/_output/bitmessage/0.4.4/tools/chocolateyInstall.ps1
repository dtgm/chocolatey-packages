try {
	$packageName = 'bitmessage'
	$packageVersion = '0.4.4'
	$url = 'https://bitmessage.org/download/windows/Bitmessage.exe'
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $installDir "$($packageName).exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Install-ChocolateyPath "$nodePath" 'Machine'  # Machine will assert admin control
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}