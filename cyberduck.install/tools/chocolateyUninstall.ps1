$packageName = 'Cyberduck'
$silentArgs = '/S'

$uninstallPath = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName UninstallString).UninstallString
& $uninstallPath $silentArgs