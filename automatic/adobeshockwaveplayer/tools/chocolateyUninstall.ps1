try {
  $packageName = '{{PackageName}}'
  $packageSearch = 'adobe shockwave*'
  $installerType = 'exe'
  $silentArgs = '/S'
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  $validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
  $unPath = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall"
  $unPathWow = "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    if ($unString=(Get-ItemProperty "$unpath\$packageSearch" UninstallString).UninstallString) {}
      else { $unString=(Get-ItemProperty "$unPathWow\$packageSearch" UninstallString).UninstallString }
    } else {
    $unString = (Get-ItemProperty "$unPath\$packageSearch" UninstallString).UninstallString
  }
  Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $unString -validExitCodes $validExitCodes 
} catch {
  throw $_.Exception 
}