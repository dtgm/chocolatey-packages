$binRoot = Get-BinRoot
$installDir = Join-Path $binRoot "cmdermini"

try { 
  if (Test-Path $installDir){
    try {
      Chocolatey-Uninstall cmdermini.portable
    } catch {
      throw $_.Exception 
}