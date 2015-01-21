try {
	$packageName = 'mc'
	$packageId = 'GNU Midnight'
	$fileType = 'exe'
	$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP'
	$validExitCodes = @(0)
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		$unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
	} else {
		$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	}
	$unFile = (Get-ItemProperty $unPath\* | Where-Object {$_.DisplayName -like "$packageId*"}).UninstallString
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes $validExitCodes
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}