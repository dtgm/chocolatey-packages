try {
  $packageName = 'blink'
  $fileType = 'exe'
  $silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  $validExitCodes = @(0)
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  } else {
    $unPathx86 = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  }
  $unString = (Get-ItemProperty $unPath\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}

