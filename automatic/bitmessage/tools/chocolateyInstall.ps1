try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
	$url = '{{DownloadUrl}}'
	$chocTempDir = Join-Path $Env:Temp "chocolatey"
	$pkgTempDir = Join-Path $chocTempDir "$packageName"
	$tempFile = Join-Path $pkgTempDir "$($packageName).exe"
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	if (![System.IO.Directory]::Exists($pkgTempDir)) {[System.IO.Directory]::CreateDirectory($pkgTempDir)}
	Get-ChocolateyWebFile "$packageName" "$tempFile" "$url"
	Copy-Item "$tempFile" "$installDir"
	$exeFile = (Get-ChildItem "$installDir\bitmessage.exe" FullName).FullName
	Remove-BinFile "$packageName" "$exeFile"
	Generate-BinFile "$packageName" "$exeFile"
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}