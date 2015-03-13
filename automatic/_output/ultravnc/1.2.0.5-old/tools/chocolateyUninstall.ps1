try {

  $unpath = "${Env:ProgramFiles}\UltraVNC\unins000.exe"
  Uninstall-ChocolateyPackage 'ultravnc' 'EXE' '/SILENT' "$unpath" -validExitCodes @(0)

  Write-ChocolateySuccess 'ultravnc'
} catch {
  throw $_.Exception.Message
}