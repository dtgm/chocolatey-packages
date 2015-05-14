$packageName = 'activetcl'
$packageSearch = 'ActiveState ActiveTcl'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName
$installPathBin = Join-Path $installPath 'bin'

$ahkFile = Join-Path $toolsPath 'chocolateyUninstall.ahk'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force

try {
  Start-Process 'AutoHotKey' "$ahkRun"
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$installerType" `
                                                 -SilentArgs "$($silentArgs)" `
                                                 -File "$($_.UninstallString)" `
                                                 -ValidExitCodes $validExitCodes }
  Remove-Item "$ahkRun" -Force
  if ((Get-ChildItem $installDir).Count -eq 0) {
    Remove-Item -Path $installDir -Force
  }
  Import-Module $unPath
  Uninstall-ChocolateyPath $installPathBin 'User'
} catch {
  throw $_.Exception
}