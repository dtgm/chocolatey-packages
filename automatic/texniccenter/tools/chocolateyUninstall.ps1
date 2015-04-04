$packageName = 'TeXnicCenter'
$installerType = 'EXE'
$silentArgs = '/SP- /SILENT /NORESTAR'
$filePath = $env:programfiles + '\TeXnicCenter\unins000.exe'

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$filePath"
