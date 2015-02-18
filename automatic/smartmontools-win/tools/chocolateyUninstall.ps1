try {
  $packageName = '{{PackageName}}'
  $fileType = 'exe'
  $silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  $validExitCodes = @(0)
  $unPathx86 = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  if (($unString = (Get-ItemProperty $unPathx86\* | select DisplayName, UninstallString | where-object {$_.DisplayName -like "smartmontools for *"}).UninstallString) -eq $null) {
    $unString = (Get-ItemProperty $unPath\* | select DisplayName, UninstallString | where-object {$_.DisplayName -like "smartmontools for *"}).UninstallString
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

