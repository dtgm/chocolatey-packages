$packageName = 'cmder.portable'
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
$toolsLoc = Get-ToolsLocation
$installPath = Join-Path $toolsLoc "cmder"
# remove from path
Import-Module $unPath
Uninstall-ChocolateyPath $installPath 'User'

if (Test-Path $installPath) {
    Remove-Item -Path $installPath -Recurse -Force
}