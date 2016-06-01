$packageName = 'graphicsmagick'
$installerType = 'EXE'
$silentArgs = '/SP /VERYSILENT'
$version = '1.3.20'

try {
  $osBitness = Get-ProcessorBits

  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\GraphicsMagick $version Q8 ($osBitness-bit)_is1").UninstallString

  Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -File $file

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
