$packageName = 'copay'
$softwareName = 'Copay version 2.7.0'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

$key | ForEach-Object {
  Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs $silentArgs `
                              -File $($_.UninstallString.Replace('"','')) `
                              -ValidExitCodes $validExitCodes
}