$packageName = 'spybot'
$packageSearch = "Spybot - Search and Destroy*"
$installerType = 'exe'
$silentArgs = '/SILENT'
$validExitCodes = @(0)
											  
	$spybot_string = "\SOFTWARE" + $bitness +"\Microsoft\Windows\CurrentVersion\Uninstall\{B4092C6D-E886-4CB2-BA68-FE5A99D31DE7}_is1"
	$hive = "hkcu"
	$Spybot = $hive + ":" + $spybot_string


	if (Test-Path $Spybot) {
	  $hk_level = "hkcu"
	} else {
	  $hk_level = "hklm"
	}

	$bitness = Get-ProcessorBits
	@{$true = "\WOW6432Node"; $false = ""}[$bitness -eq "64"]
	
	if (Test-Path $Spybot.QuietUninstallString) {
	$spybot_uninstall_string = "QuietUninstallString"
	$silentArgs = ""
	} else {
	$spybot_uninstall_string = "UninstallString"
	}	

	$file = (Get-ItemProperty -Path ( $hk_level + ":" +$spybot_string ) ).$spybot_uninstall_string

return $file
										  
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
