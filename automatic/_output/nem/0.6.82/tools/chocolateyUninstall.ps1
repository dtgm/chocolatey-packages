$ErrorActionPreference = "SilentlyContinue"
$procName = "wallet"
Stop-Process -Name $procName -Force
$procName = "java"
$procId = (Get-WmiObject Win32_Process -Filter "name like '$procName%'" | Where-Object {$_.CommandLine -Match "org.nem"}).ProcessId
if ($procId) {
  $procId | foreach {Stop-Process -Id $_ -Force}
}
$packageName = 'nem'
$packageSearch = "NEM Wallet"
$installerType = 'exe'
$silentArgs = '--mode unattended --debuglevel 0'
$validExitCodes = @(0)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
| Where-Object   { $_.DisplayName -like "$packageSearch" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString.Replace('"',''))" `
                                               -ValidExitCodes $validExitCodes }