$packageName = 'Bitvise SSH Server'

$uninstallPath = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName UninstallString).UninstallString
$uninstallArgs = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName UninstallParam).UninstallParam
& $uninstallPath $uninstallArgs