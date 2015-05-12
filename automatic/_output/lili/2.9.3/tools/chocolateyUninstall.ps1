try {
  $packageName = 'lili'
  $packageNameUn = 'LinuxLive'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  } else {
    $unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  }
  $unProg = (Get-ItemProperty $unPath\$packageNameUn* UninstallString).UninstallString
  if ($unProg | select-string -pattern /) {
    $unProg = "$unProg" | %{ $_.Split(' /')[0]; }
  }
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unProg" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception 
}