$packageName = '{{PackageName}}'
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot "cmdermini"
# remove from path
Import-Module $unPath
Uninstall-ChocolateyPath $installPath 'User'

if (Test-Path $installPath) {
    Remove-Item -Path $installPath -Recurse -Force
}