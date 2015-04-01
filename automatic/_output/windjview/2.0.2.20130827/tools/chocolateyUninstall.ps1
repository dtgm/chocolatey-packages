$packageName = 'WinDjView'
$installerType = 'EXE'
$silentArgs = '/S'
$filePath = $env:programfiles + '\WinDjView\uninstall.exe'

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$filePath"
