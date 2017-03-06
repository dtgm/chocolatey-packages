$packageName = 'arduino'
$softwareName = "$packageName"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force
Start-Process $ahkExe $ahkRun

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName
Write-Warning "Warning: All existing files in `"$(Split-Path $($key.UninstallString))`" will be deleted. This includes files and folders present before or added since you installed the Arduino software."
Write-Warning "Ctrl+C to cancel.  Continuing in 5 seconds..."
Start-Sleep -Seconds 5

$key | ForEach-Object {
  Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs $($silentArgs) `
                              -File $($_.UninstallString.Replace('"','')) `
                              -ValidExitCodes $validExitCodes
}

Remove-Item "$ahkRun" -Force