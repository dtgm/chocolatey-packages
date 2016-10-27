$packageName = 'i2p'
$validExitCodes = @(0)

Write-Debug "Verify java environment is configured"
if ([Environment]::GetEnvironmentVariable('CLASSPATH','Machine') -eq $null) {
  Install-ChocolateyEnvironmentVariable 'CLASSPATH' '.;' 'Machine'
}
if ([Environment]::GetEnvironmentVariable('JAVA_HOME','Machine') -eq $null) {
  Write-Host "Setting JAVA_HOME"
  $java_version = (gci $env:programfiles\java | select -Last 1).name
  $java_home = Join-Path -Path $env:ProgramFiles `
                         -ChildPath "Java" |
               Join-Path -ChildPath $java_version
  Install-ChocolateyEnvironmentVariable -VariableName JAVA_HOME `
                                        -VariableValue $java_home `
                                        -VariableType Machine
}
if (Get-Command java) {
  continue
} else {
  $java_bin = Join-Path -Path $env:java_home `
                        -ChildPath "bin"
  Install-ChocolateyPath $java_bin Machine
} 

Write-Debug "Configure i2p uninstall environment"
$inPath = Join-Path $Env:ProgramFiles "ip2"
$unPath = Join-Path $inPath "Uninstaller"
$unBin = Join-Path $unPath "uninstaller.jar"
$installArgs = "-jar `'$($unBin)`'"

Write-Debug "Configure AutoHotKey environment"
$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force

Start-Process $ahkExe $ahkRun
Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
                               -ExeToRun "java" `
                               -ValidExitCodes $validExitCodes
Remove-Item "$ahkRun" -Force
if (Test-Path $inPath) {
  Remove-Item -Path $inPath -Recurse
}