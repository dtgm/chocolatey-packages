try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
	$installerType = 'exe'
	$silentArgs = '/S'
	$url = '{{DownloadUrl}}'
	$chocTempDir = Join-Path $env:TEMP 'chocolatey'
	$pkgTempDir = Join-Path $chocTempDir $packageName
	
	# download and extract to $pkgTempDir
	Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$pkgTempDir"
	
	# determine which installer to run 
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		$installFile = (Get-ChildItem "$pkgTempDir\64\" -filter "*-win-setup.exe").fullname
	} else {
		$installFile = (Get-ChildItem "$pkgTempDir\32\" -filter "*-win-setup.exe").fullname
	}
	# run extracted installer
	Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$installFile"
	Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}
