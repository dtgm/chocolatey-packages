$packageName = 'kodi'
$installerType = 'exe'
$silentArgs = '/S'
$unString = (get-item -path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\kodi*).GetValue('UninstallString')
$validExitCodes = @(0)
try {
  Uninstall-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$silentArgs" `
                              -File "$unString" `
                              -ValidExitCodes $validExitCodes
} catch {
  throw $_.Exception.Message
}