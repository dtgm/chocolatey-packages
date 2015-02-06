try {
	$packageName = 'linkshellextension'
	$packageSearch = 'hardlinkshell'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	$unString = (Get-ItemProperty "$unPath\$packageSearch*" UninstallString).UninstallString
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}