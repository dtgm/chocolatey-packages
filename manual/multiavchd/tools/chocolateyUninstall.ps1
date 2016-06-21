$packageName = 'multiavchd'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$installPath = Join-Path (Get-BinRoot) $packageName
$file = Join-Path $installPath "Uninstall.exe"

if (Test-Path $file) {
  Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs $silentArgs `
                              -File $file `
                              -ValidExitCodes $validExitCodes
} else {
  Write-Verbose "Not found: `"$file`""
  Write-Host "$packageName has already been uninstalled."
}

if (Test-Path $installPath) {
  Write-Verbose "Removing leftover files in `"$installPath`""
  Remove-Item -Path $installPath -Recurse -Force
}

Write-Verbose "Removing from path..."
$toolsPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
Import-Module $unPath
Uninstall-ChocolateyPath $installPath 'User'