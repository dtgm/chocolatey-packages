$packageName = '{{PackageName}}'
$packageSearch = 'Bitcoin Core'
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$unPath = "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
$unString=(Get-ItemProperty "$unpath\$packageSearch*" UninstallString).UninstallString)
try {
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}
