$packageName = 'keepass-plugin-trayrecent'
$typName = 'TrayRecentFiles.plgx'
$packageSearch = 'KeePass Password Safe'
$url = 'https://github.com/fdbeirao/KeePassTrayRecentFiles/releases/download/0.0.2/TrayRecentFiles.plgx'
$checksum = '01b41212a402197b999f867604f1617756d6d8bb'
$checksumType = 'sha1'
try {
# search registry for location of installed KeePass
$regPath = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                            -ErrorAction:SilentlyContinue `
           | Where-Object {$_.DisplayName -like "$packageSearch*" `
                           -and `
                           $_.DisplayVersion -ge 2.0 `
                           -and `
                           $_.DisplayVersion -lt 3.0 } `
           | ForEach-Object { $_.InstallLocation }
$installPath = $regPath
# search $env:ChocolateyBinRoot for portable install
if (! $installPath) {
  Write-Host "$($packageSearch) not found installed."
  $binRoot = Get-BinRoot
  $portPath = Join-Path $binRoot "keepass"
  $installPath = Get-ChildItem -Directory $portPath* -ErrorAction SilentlyContinue
}
if (! $installPath) {
  Write-Host "$($packageSearch) not found in $($env:ChocolateyBinRoot)"
  throw "$($packageSearch) location could not be found."
}
$pluginPath = (Get-ChildItem -Directory $installPath\Plugin*).FullName
if ($pluginPath.Count -eq 0) {
  $pluginPath = Join-Path $installPath "Plugins"
  [System.IO.Directory]::CreateDirectory($pluginPath)
}
$installFile = Join-Path $pluginPath "$($packageName).plgx"
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
if ( Get-Process -Name "KeePass" `
                 -ErrorAction SilentlyContinue ) {
  Write-Host "$($packageSearch) is currently running. Plugin will be available at next restart of $($packageSearch)." 
} else {
  Write-Host "$($packageName) will be loaded the next time KeePass is started."
  Write-Host "Please note this plugin may require additional configuration. Look for a new entry in KeePass' Menu>Tools"
}} catch {
  throw $_.Exception
}