$packageName = 'firefox-dev'
$packageSearch = 'Firefox Developer'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP'
$validExitCodes = @(0)
$unPath = "HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
$unPathx86 = "HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
try {
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