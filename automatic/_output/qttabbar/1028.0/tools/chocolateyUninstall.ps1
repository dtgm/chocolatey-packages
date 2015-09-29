$packageName = 'qttabbar'
$installerType = 'exe'
$silentArgs = "/QU"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$uninstallFile = Join-Path $toolsDir "$($packageName).exe"

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

# vista bug, if qttabbar remains after uninstall, remove key:
#[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\ShellBrowser]
#"ITBar7Layout"