$packageName = "datacrow"
$silentArgs = '-c -f'

Write-Debug "Searching for uninstall file..."
if (Test-Path "${Env:ProgramFiles(x86)}\Data Crow\") {
  $unPath = "${Env:ProgramFiles(x86)}\Data Crow\Uninstaller\uninstaller.jar"
} elseif (Test-Path "$Env:ProgramFiles\Data Crow\") {
  $unPath = "$Env:ProgramFiles\Data Crow\Uninstaller\uninstaller.jar"
} else {
  Write-Warning "Data Crow install location not found."
}

Write-Debug "Stopping all datacrow processes..."
$procId = (Get-Process -Name datacrow*).id
if ($procId) {
  $procId | ForEach-Object {Stop-Process -Id $_ -Force}
}

Write-Debug "Silently uninstalling..."
$uninstallCmd = "/c `"$unPath`" $silentArgs"
try {
  Start-ChocolateyProcessAsAdmin -Statements "$uninstallCmd" `
                                 -ExeToRun "cmd.exe"
} catch {
  throw $_.Exception
}