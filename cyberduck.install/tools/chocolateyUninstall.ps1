$packageName = '{{PackageName}}'

$uninstallPath = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName UninstallString).QuietUninstallString
& $uninstallPath /S