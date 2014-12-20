try {
	$packageName = '{{PackageName}}'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	if ($is64bit) {
		$unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
	} else {
		$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	}
	$unString = (Get-ItemProperty $unPath\$packageName* UninstallString).UninstallString
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes $validExitCodes
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}