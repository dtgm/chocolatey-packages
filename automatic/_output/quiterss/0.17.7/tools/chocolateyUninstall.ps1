try {
  $packageName = 'quiterss'
  $fileType = 'exe'
  $silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
  $validExitCodes = @(0)
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  } else {
    $unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  }
  $unFile = (Get-ItemProperty $unPath\* | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes "$validExitCodes"
} catch {
  throw $_.Exception 
}