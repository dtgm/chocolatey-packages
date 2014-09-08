$binRoot = Get-BinRoot
$installDir = Join-Path $binRoot "cmder"

try { 
	if (Test-Path $installDir){
		try {
			Chocolatey-Uninstall cmder.portable
			Write-ChocolateySuccess "cmder.portable"
		} catch {
			Write-ChocolateyFailure "cmder.portable" "$($_.Exception.Message)"
			throw
		}
	}
	Write-ChocolateySuccess "cmder"
} catch {
  Write-ChocolateyFailure "cmder" "$($_.Exception.Message)"
  throw 
}