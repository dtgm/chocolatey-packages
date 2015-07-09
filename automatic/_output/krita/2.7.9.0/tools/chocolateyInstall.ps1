$name	= 'Calligra Krita'
$url32	= 'http://heap.kogmbh.net/downloads/krita_x86_2.7.9.0.msi'
$url64	= 'http://heap.kogmbh.net/downloads/krita_x64_2.7.9.0.msi'
$urlXP	= 'http://heap.kogmbh.net/downloads/krita_xp_x86_2.7.9.0.msi'
$pwd	= "$(split-path -parent $MyInvocation.MyCommand.Definition)"



try {

	# Get Windows version
	$os = Get-WmiObject Win32_OperatingSystem
	$osVersion = $os.Version
	if ("$osVersion" -match "5.1") {$winXP = 1}
	if ("$osVersion" -match "5.2") {$winXP = 1}
	if ("$osVersion" -match "6.0") {$winVista = 1}
	if ("$osVersion" -match "6.1") {$win7 = 1}
	if ("$osVersion" -match "6.2") {$win8 = 1}
	if ("$osVersion" -match "6.3") {$win81 = 1}
	


	# Installer
	if ($winXP) {
		Install-ChocolateyPackage $name 'MSI' '/quiet /norestart' $urlXP
	}
	else {
		Install-ChocolateyPackage $name 'MSI' '/quiet /norestart' $url32 $url64
	}

	# Success!
	Write-ChocolateySuccess $name

} catch {
	# No :(
	Write-ChocolateyFailure $name $($_.Exception.Message)
	throw	
}
