$warningPreference = "Continue"
$chocoLib = Join-Path $env:ChocolateyInstall "lib"
if (Test-Path -PathType Container (Join-Path $chocoLib '{{PackageName}}.*')) {
  Write-Warning "Uninstall NOT complete."
  Write-Host 
@"
  This package is a metapackage; a chocolatey feature not yet fully implemented.
  To retain future compatibility this package does not uninstall the dependent
  package it points to as designated with *.install or *.portable.`n
"@
  Write-Warning "Please also run the command(s):"
  Write-Host " `n`tcuninst " -NoNewLine
  $list = (Get-ChildItem -Directory $chocoLib\{{PackageName}}.*).Name
  foreach ($i in $list) {
    Write-Host "$($i) " -NoNewLine
  }
  Write-Host "-y"
}