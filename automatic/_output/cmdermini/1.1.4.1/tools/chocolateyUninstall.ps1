$binRoot = Get-BinRoot
$installDir = Join-Path $binRoot "cmdermini"

try { 
	if (Test-Path $installDir){
		try {
			Chocolatey-Uninstall cmdermini.portable
			Write-ChocolateySuccess "cmdermini.portable"
		} catch {
			Write-ChocolateyFailure "cmdermini.portable" "$($_.Exception.Message)"
			throw
		}
	}
	Write-ChocolateySuccess "cmdermini"
} catch {
  Write-ChocolateyFailure "cmdermini" "$($_.Exception.Message)"
  throw 
}