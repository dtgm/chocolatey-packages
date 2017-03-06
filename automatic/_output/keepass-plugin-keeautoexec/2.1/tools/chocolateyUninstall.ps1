# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}
$packageName = 'keepass-plugin-keeautoexec'
$typName = 'KeeAutoExec'
$packageSearch = 'KeePass Password Safe'
try {
# search registry for installed KeePass
$regPath = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                            -ErrorAction:SilentlyContinue `
           | Where-Object {$_.DisplayName -like "$packageSearch*"} `
           | ForEach-Object {$_.InstallLocation}
$installPath = $regPath
# search $env:ChocolateyBinRoot for portable install
if (! $installPath) {
  Write-Verbose "$($packageSearch) not found in registry."
  $binRoot = Get-BinRoot
  $portPath = Join-Path $binRoot "keepass"
  $installPath = Get-ChildItemDir $portPath* -ErrorAction SilentlyContinue
}
if (! $installPath) {
  Write-Verbose "$($packageSearch) not found in $($env:ChocolateyBinRoot)"
  throw "$($packageSearch) install location could not be found."
}
$pluginPath = (Get-ChildItemDir $installPath\Plugin*).FullName
if ($pluginPath.Count -eq 0) {
  throw "Plugins directory not found."
}
$installFile = Join-Path $pluginPath "$($packageName)"
Remove-Item -Path $installFile* `
            -Force `
            -ErrorAction Continue
if ( Get-Process -Name "KeePass" `
                 -ErrorAction SilentlyContinue ) {
  Write-Warning "$($packageSearch) is running. $($packageName) will be removed at next restart of $($packageSearch)." 
}
} catch {
  throw $_.Exception
}