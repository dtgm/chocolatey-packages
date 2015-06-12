try {
  $packageName = 'smartmontools'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $unPathx86 = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  if (Test-Path $unPathx86\$packageName) {
    $unString = (Get-ItemProperty $unPathx86\$packageName UninstallString).UninstallString
  }
  if (Test-Path $unPath\$packageName) {
    $unString = (Get-ItemProperty $unPath\$packageName UninstallString).UninstallString
  }
  if ($unString | select-string -pattern /) {
    $unProg = $unString | %{ $_.Split(' /')[0]; }
    Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unProg" -validExitCodes "$validExitCodes"
  } else {
    Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes "$validExitCodes"
  }
} catch {
  throw $_.Exception
}
