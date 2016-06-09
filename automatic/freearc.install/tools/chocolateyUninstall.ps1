$packageName = '{{PackageName}}'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "freearcUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force

$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
  $unString = (get-item -path HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\freearc).getvalue('UninstallString')
} else {
  $unString = (get-item -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\freearc).getvalue('UninstallString')
}

Start-Process $ahkExe $ahkRun
Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
Remove-Item "$ahkRun" -Force