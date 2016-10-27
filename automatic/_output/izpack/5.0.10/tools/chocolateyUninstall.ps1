$packageName = 'izpack'
$validExitCodes = @(0)
$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force
if (Test-Path "${Env:ProgramFiles(x86)}\IzPack\Uninstaller\") {
  $unString = "${Env:ProgramFiles(x86)}\IzPack\Uninstaller\uninstaller.jar"
} elseif (Test-Path "$Env:ProgramFiles\IzPack\Uninstaller\") {
  $unString = "$Env:ProgramFiles\IzPack\Uninstaller\uninstaller.jar"
} else {
  Write-Error "IzPack is not installed."
  throw
}
$installArgs = "javaw -jar `'$($unString)`'"

Start-Process $ahkExe $ahkRun
Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
					   -ExeToRun "powershell" `
					   -ValidExitCodes $validExitCodes
Remove-Item "$ahkRun" -Force