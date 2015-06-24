Write-Verbose "This package is a metapackage. Metapackages are a chocolatey feature not yet completed. To retain future compatibility this package does not uninstall the dependent package it points to as designated with *.install or *.portable."
if (Test-Path -PathType Container $env:ChocolateyInstall\lib\fossil.portable) {
  Write-Warning "Uninstall not complete, please also run the command: cuninst fossil.portable -y"
}