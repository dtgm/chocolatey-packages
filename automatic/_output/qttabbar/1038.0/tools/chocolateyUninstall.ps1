$packageName = 'qttabbar'
$installerType = 'exe'
$silentArgs = "/QU"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$uninstallFile = Join-Path $toolsDir "$($packageName).exe"

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force
Start-Process $ahkExe $ahkRun

$regKey = 'HKLM:\SOFTWARE\Quizo\QTTabBar'
if (Test-Path $regKey) {
  Write-Debug "Existing install detected."
}

if (Test-Path $uninstallFile) {
  Uninstall-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$silentArgs" `
                              -File "$uninstallFile"
}

Remove-Item "$ahkRun" -Force -ErrorAction SilentlyContinue

# vista bug, if qttabbar remains after uninstall, remove key:
#[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\ShellBrowser]
#"ITBar7Layout"