$packageName = 'spybot'
$packageSearch = "Spybot - Search and Destroy*"
$installerType = 'exe'
#$silentArgs = '/SILENT'
$validExitCodes = @(0)

   [array]$spybot = Get-UninstallRegistryKey -SoftwareName "Spybot*"
 $file = $spybot.QuietUninstallString
  if ( $null -eq $file ) { $file = $spybot.UninstallString }
return $file
										  
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -validExitCodes $validExitCodes -File $file
