try {
	$packageName = 'cdex'
	$installerType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
	$unpath = "HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
	$unpath32 = "HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		$unString = (Get-ItemProperty "$unpath\$packageName*" UninstallString).UninstallString
	} else {
		$unString = (Get-ItemProperty "$unpath32\$packageName*" UninstallString).UninstallString
	} 
	Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}