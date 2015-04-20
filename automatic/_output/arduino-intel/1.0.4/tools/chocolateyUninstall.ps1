$packageName = 'arduino-intel'
$installerType = 'exe'
$unChocoPath = Join-Path $MyInvocation.MyCommand.Definition "Uninstall-ChocolateyPath.ps1"
if(!$Env:ChocolateyBinRoot){
  $Env:ChocolateyBinRoot = "$Env:SystemDrive"
}
$installDir = Join-Path "$Env:ChocolateyBinRoot" "$packageName"
try {
  if (!(Get-Command "Uninstall-ChocolateyPath" -ErrorAction SilentlyContinue)) {
    Write-Debug "Using bundled Uninstall-ChocolateyPath $unChocoPath"
    . $unChocoPath
  }
  Uninstall-ChocolateyPath $installDir 'User'
} catch {
  throw $_.Exception.Message
}