$packageName = 'kis'
$softwareName = "Kaspersky Internet Security"
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REMOVE=ALL'
$validExitCodes = @(0,3010)

if (Get-Process -Name avp, avpui) {
  Write-Warning "Kaspersky Internet Security is currently running..."
  Write-Warning "Please exit the program from the tray icon and run this command again."
  throw
} else {
  [array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName
  $key.PSChildName | ForEach-Object {
    $_ -match '{[\dA-F-]+}'
    Uninstall-ChocolateyPackage -PackageName "$packageName" `
					       -FileType "$installerType" `
					       -SilentArgs "$($Matches.Values) $silentArgs" `
					       -ValidExitCodes $validExitCodes
  }
}