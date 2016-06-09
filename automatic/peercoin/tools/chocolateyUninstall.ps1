
$packageName = '{{PackageName}}'
$packageSearch = 'PPCoin'
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$unPath = "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
$unString = (Get-ItemProperty "$unPath\$packageSearch*" UninstallString).UninstallString
Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
