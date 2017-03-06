﻿
$packageName = 'mRemoteNG'
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
Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes "$validExitCodes"
