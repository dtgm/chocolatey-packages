try {
	$packageName = 'riecoin'
	$packageVersion = '0.10.2'
	$installerType = 'exe'
	$silentArgs = '/S'
	$url = 'http://softlayer-dal.dl.sourceforge.net/project/riecoin/riecoin 0.10.2/riecoin-0.10.2-win.zip'
	$chocTempDir = Join-Path $env:TEMP 'chocolatey'
	$pkgTempDir = Join-Path $chocTempDir $packageName
	
	# download and extract to $pkgTempDir
	Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$pkgTempDir"
	
	# determine which installer to run
	$pkgTempDir = Join-Path $pkgTempDir $packageName-$packageVersion-win
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		$installFile = (Get-ChildItem "$pkgTempDir" -filter "*-win64-setup.exe").fullname
	} else {
		$installFile = (Get-ChildItem "$pkgTempDir" -filter "*-win32-setup.exe").fullname
	}
	# run extracted installer
	Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$installFile"
	Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}
