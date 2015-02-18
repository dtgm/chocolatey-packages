$binRoot = Get-BinRoot
$installDir = Join-Path $binRoot "cmder"

try { 
  if (Test-Path $installDir){
    try {
      Chocolatey-Uninstall cmder.portable
    } catch {
      throw $_.Exception 
}