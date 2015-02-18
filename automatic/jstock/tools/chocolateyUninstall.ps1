try {
	$packageName = '{{PackageName}}'
	$fileType = 'exe'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
	$ahkFile = "$scriptPath\$packageName.ahk"
	$ahkRun = "$Env:Temp\$(Get-Random).ahk"
	Copy-Item $ahkFile $ahkRun -Force
	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	if ($is64bit) {
		$unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
	} else {
		$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	}
	Start-Process 'AutoHotKey' "$ahkRun"
	$unFile = (Get-ItemProperty $unPath\$packageName* UninstallString).UninstallString
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes $validExitCodes
	Remove-Item "$ahkRun"
} catch {
  throw $_.Exception 
}