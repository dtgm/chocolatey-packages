try {
	$packageName = 'peerunity.install'
	$packageVersion = '0.1.1'
	$installerType = 'exe'
	$silentArgs = '/S'
	$url = 'https://github.com/Peerunity/Peerunity/releases/download/v0.1.1/peerunity-0.1.1-win.zip'
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
