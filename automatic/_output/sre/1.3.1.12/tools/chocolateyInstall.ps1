try {
	$packageName = 'sre'
	$packageVersion = '1.3.1.12'
	$url = 'http://sourceforge.net/projects/sre/files/SRE%20%201.3.1.12/Small%20Registry%20Editor1.3.1.12.exe/download'
	$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFile = Join-Path $toolsDir "sre.exe"
	Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
	Set-Content -Path ("$toolsDir\sre.exe.gui") -Value $nul
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}