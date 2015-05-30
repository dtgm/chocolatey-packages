try {
  $packageName = '{{PackageName}}'
  $packageSearch = 'hardlinkshell'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  $unString = (Get-ItemProperty "$unPath\$packageSearch*" UninstallString).UninstallString
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}