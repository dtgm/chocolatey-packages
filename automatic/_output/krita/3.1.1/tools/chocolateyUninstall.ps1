$packageName = 'krita'
$softwareName = "Krita *"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
�
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName
�
$key | ForEach-Object {
��Uninstall-ChocolateyPackage -PackageName $packageName `
������������������������������-FileType $installerType `
������������������������������-SilentArgs $($silentArgs) `
������������������������������-File $($_.UninstallString.Replace('"','')) `
������������������������������-ValidExitCodes $validExitCodes
}