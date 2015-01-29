try {
	$packageName = 'bitmessage'
	$packageVersion = '0.4.4'
	$url = 'https://bitmessage.org/download/windows/Archive/Bitmessage v0.4.4.exe'
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $installDir "$($packageName).exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}