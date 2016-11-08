$packageName = 'sketchupviewer'
$softwareName = "SketchUp Viewer"
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

$key | ForEach-Object {
  Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs "$($_.PSChildName) $silentArgs" `
                              -ValidExitCodes $validExitCodes
}