try {
	$packageName = '{{PackageName}}'
	$packageSearch = 'Peerunity'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$unPath = "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
	$unPathx86 = "HKCU:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		if ($unString=(Get-ItemProperty "$unpath\$packageSearch*" UninstallString).UninstallString) {}
			else { $unString=(Get-ItemProperty "$unPathx86\$packageSearch*" UninstallString).UninstallString }
		} else {
		$unString = (Get-ItemProperty "$unPath\$packageSearch*" UninstallString).UninstallString
	}
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}