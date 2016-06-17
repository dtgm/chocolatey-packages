$packageName = 'irfanview'
$softwareName = "$packageName *"
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force
Start-Process $ahkExe $ahkRun

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName
$key | ForEach-Object {
  Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs $($silentArgs) `
                              -File $($_.UninstallString.Replace('"','')) `
                              -ValidExitCodes $validExitCodes
}

Remove-Item "$ahkRun" -Force