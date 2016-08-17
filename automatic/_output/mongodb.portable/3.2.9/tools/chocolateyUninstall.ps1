$packageName = 'mongodb.portable'
$version = '3.2.9'
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'

Write-Verbose "Default install location is `'$env:ChocolateyToolsLocation`'"
$binRoot = Get-ToolsLocation
$mongoPath = Join-Path $binRoot $packageName
$mongoBin = Join-Path $mongoPath 'bin'
$mongoDaemon = Join-Path $mongoBin 'mongod.exe'
if (Test-Path $mongoDaemon){
  Start-ChocolateyProcessAsAdmin "net stop `"MongoDB`"; $mongoDaemon --remove"
  if (Test-Path $mongoPath) {Remove-Item $mongoPath -Recurse -Force}
}

Write-Verbose "Removing from path..."
Import-Module $unPath
Uninstall-ChocolateyPath $mongoBin 'Machine'