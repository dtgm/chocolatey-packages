$packageName = 'spybot'
$packageSearch = "Spybot - Search and Destroy*"
$installerType = 'exe'
$silentArgs = '/SILENT'

$spybotreg = Get-UninstallRegistryKey -SoftwareName $packageSearch
$spybot = $spybotreg.UninstallString
									  
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -File $spybot
