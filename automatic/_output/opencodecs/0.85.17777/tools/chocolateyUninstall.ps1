try {
	$packageName = 'opencodecs'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		$unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
	} else {
		$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	}
	$unString = (Get-ItemProperty $unPath\open* UninstallString).UninstallString
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}