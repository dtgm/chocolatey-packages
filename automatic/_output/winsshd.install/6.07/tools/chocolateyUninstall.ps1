$packageName = 'Bitvise SSH Server'
$fileType = 'exe'

$uninstallPath = (Get-ItemProperty "HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName" -Name 'UninstallString').UninstallString
$uninstallArgs = (Get-ItemProperty "HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName" -Name 'UninstallParam').UninstallParam


Uninstall-ChocolateyPackage $packageName $fileType $uninstallPath $uninstallArgs