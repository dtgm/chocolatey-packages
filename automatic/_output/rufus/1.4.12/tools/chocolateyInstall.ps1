try {
	$packageName = 'rufus'
	$packageVersion = '1.4.12'
	$url = 'http://rufus.akeo.ie/downloads/rufus-1.4.12.exe'
	$chocTempDir = Join-Path $Env:Temp "chocolatey"
	$pkgTempDir = Join-Path $chocTempDir "$packageName"
	$tempFile = Join-Path $pkgTempDir "$($packageName).exe"
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	if (![System.IO.Directory]::Exists($pkgTempDir)) {[System.IO.Directory]::CreateDirectory($pkgTempDir)}
	Get-ChocolateyWebFile "$packageName" "$tempFile" "$url"
	Copy-Item "$tempFile" "$installDir"
	$exeFile = "$((Get-ChildItem "$installDir\rufus.exe")[0].Fullname)"
	Remove-BinFile "$packageName" "$exeFile"
	Generate-BinFile "$packageName" "$exeFile"
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}