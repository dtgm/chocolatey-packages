$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$binRoot = Get-BinRoot
echo "$binRoot"
$installDir = Join-Path $binRoot "cmder"
echo "$installDir"

try { 
  if (Test-Path $installDir){
    Remove-Item -Recurse -Force $installDir
  }
  if (Test-Path -Path "$installDir") {
    Remove-Item -Path -Force "$installDir"
  }
} catch {
  throw $_.Exception 
}

if (Test-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\..\..\cmder.$packageVersion") {
  Chocolatey-Uninstall cmder
}