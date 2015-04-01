$packageName = 'WinEdt'
$installerType = 'EXE'
$silentArgs = '/S'
$filePath = $env:programfiles + '\WinEdt Team\WinEdt 8\Uninstall.exe'

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$filePath"
