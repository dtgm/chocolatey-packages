$packageName = 'cmder'
$toolsPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot 'cmder'

Import-Module $unPath
Uninstall-ChocolateyPath $installPath 'User'

if (Test-Path $installPath) {
    Remove-Item -Path $installPath -Recurse -Force
}