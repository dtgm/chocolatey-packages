#$packageName = 'Bitvise SSH Server'

#$uninstallPath = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName UninstallString).UninstallString
#$uninstallArgs = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName UninstallParam).UninstallParam
#& $uninstallPath $uninstallArgs

$packageName = 'winsshd.install'
$packageSearch = "Bitvise SSH Server"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$installerType" `
                                                 -SilentArgs "$($silentArgs)" `
                                                 -File "& $($_.UninstallString)" `
                                                 -ValidExitCodes $validExitCodes }
} catch {
  throw $_.Exception
}