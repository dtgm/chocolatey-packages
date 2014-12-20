try {
	$packageName = '{{PackageName}}'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	$unPathWow = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
	if ((Get-ItemProperty $unPath\$packageName)) {
		$unString = (Get-ItemProperty $unPath\$packageName UninstallString).UninstallString
	} elseif ((Get-ItemProperty $unPathWow\$packageName)) {
		$unString = (Get-ItemProperty $unPathWow\$packageName UninstallString).UninstallString
	}	else {
		Write-Warning "$packageName is not installed."
	}
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}