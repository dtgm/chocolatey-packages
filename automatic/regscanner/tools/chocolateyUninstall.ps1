try {
  $packageName = '{{PackageName}}'
  $packageSearch = 'NirSoft RegScanner'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  } else {
    $unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  }
  $unString = (Get-ItemProperty $unPath\$packageSearch* UninstallString).UninstallString
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}