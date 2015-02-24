try {
  $packageName = 'sqlitebrowser'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    $unString = (get-item -path HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName*).GetValue('UninstallString')
  } else {
    $unString = (get-item -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$packageName*).GetValue('UninstallString')
  }
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception.Message
}
