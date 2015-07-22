$packageName = '{{PackageName}}'
$validExitCodes = @(0)
$inPath = Join-Path $Env:ProgramFiles "ip2"
$unPath = Join-Path $inPath "Uninstaller"
$unBin = Join-Path $unPath "uninstaller.jar"
$installArgs = "java -jar `'$($unBin)`'"

$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force

try {
  Start-Process $ahkExe $ahkRun
  Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
                                 -ExeToRun "powershell" `
                                 -ValidExitCodes $validExitCodes
  Remove-Item "$ahkRun" -Force
  if (Test-Path $inPath) {
    Remove-Item -Path $inPath -Recurse
  }
} catch {
  throw
}