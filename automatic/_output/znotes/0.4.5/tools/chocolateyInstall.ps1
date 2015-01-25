try {
	$packageName = 'znotes'
	$packageVersion = '0.4.5'
	$url = 'http://sourceforge.net/projects/znotes/files/0.4.5/znotes.exe/download'
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $installDir "$($packageName).exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}