try {
	$packageName = 'feathercoin'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$unPath = "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
	$unString = (Get-ItemProperty "$unPath\$packageName*" UninstallString).UninstallString
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}