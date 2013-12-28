$packageName = '{{PackageName}}'

$uninstallPath = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName QuietUninstallString).QuietUninstallString
& $uninstallPath /S