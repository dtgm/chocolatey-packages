try {
  $packageName = 'msigna'
  $installerType = 'exe'
  $silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  $validExitCodes = @(0)
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\$packageName\unins000.exe"
  } else {
    $unpath = "$Env:ProgramFiles\$packageName\unins000.exe"
  }
  Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}


