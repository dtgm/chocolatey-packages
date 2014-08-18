# Uninstall executable = Nullsoft Install System v2.46

$silentArgs = "/S"
$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

if ($is64bit) {
	$packageName = "Cyberduck"
	$uninstallString = (Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
} else {
	$packageName = "Cyberduck"
	$uninstallString = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
}

$uninstallString = "$uninstallString" -replace '[{]', '`{'
$uninstallString = "$uninstallString" -replace '[}]', '`}'

if ($uninstallString -ne "") {
     Uninstall-ChocolateyPackage 'EXE' "$uninstallString $silentArgs";
		 Write-ChocolateySuccess $packageName
}
