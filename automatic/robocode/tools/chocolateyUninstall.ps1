# generated vars
$packageName = '{{PackageName}}'

# static vars
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

# remove from path
Import-Module $unPath
Uninstall-ChocolateyPath $installPath 'User'