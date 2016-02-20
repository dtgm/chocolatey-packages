$packageName = "datacrow"

if (Test-Path "${Env:ProgramFiles(x86)}\Data Crow\") {
  $unPath = "${Env:ProgramFiles(x86)}\Data Crow\Uninstaller\uninstaller.jar"
} elseif (Test-Path "$Env:ProgramFiles\Data Crow\") {
  $unPath = "$Env:ProgramFiles\Data Crow\Uninstaller\uninstaller.jar"
} else {
  Write-Warning "Data Crow install location not found."
}

$uninstallCmd = "/c `"$unPath`" -c -f"
try {
  Start-ChocolateyProcessAsAdmin -Statements "$uninstallCmd" `
                                 -ExeToRun "cmd.exe"
} catch {
  throw $_.Exception
}