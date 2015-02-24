try {
  $packageName = 'riecoin'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $unPath = "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
  $unPathx86 = "HKCU:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    if ($unString=(Get-ItemProperty "$unpath\$packageName*" UninstallString).UninstallString) {}
      else { $unString=(Get-ItemProperty "$unPathx86\$packageName*" UninstallString).UninstallString }
    } else {
    $unString = (Get-ItemProperty "$unPath\$packageName*" UninstallString).UninstallString
  }
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}