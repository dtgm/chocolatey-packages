$name = 'OpenHardwareMonitor'
$pwd = "$(split-path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://openhardwaremonitor.org/files/openhardwaremonitor-v0.6.0-beta.zip'



# Combatibility - merged in 0.9.8.23 but contains error up to 0.9.8.24, so skipping for now
#if (!(Get-Command Get-BinRoot -errorAction SilentlyContinue)) {
#	Import-Module "$($pwd)\Get-BinRoot.ps1"
#}
Import-Module "$($pwd)\Get-BinRoot.ps1"

# Combatibility - This function has not been merged
if (!(Get-Command Install-ChocolateyPinnedItem -errorAction SilentlyContinue)) {
	Import-Module "$($pwd)\Install-ChocolateyPinnedItem.ps1"
}


try { 
	$binRoot = Get-BinRoot

	# Extract archive to binRoot
	Install-ChocolateyZipPackage $name "$url" "$binRoot"
	
	# Pin 'OpenHardwareMonitor' to Start
	Install-ChocolateyPinnedItem "$binRoot\OpenHardwareMonitor\OpenHardwareMonitor.exe"

	Write-ChocolateySuccess $name
} catch {
	Write-ChocolateyFailure $name "$($_.Exception.Message)"
	throw 
}

