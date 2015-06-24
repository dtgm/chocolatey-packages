$packageName = 'keepass-plugin-fieldsadminconsole'
$typName = 'FieldsAdminConsole.plgx'
$packageSearch = 'KeePass Password Safe'
try {
# search registry for installed KeePass
$regPath = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                            -ErrorAction:SilentlyContinue `
           | Where-Object {$_.DisplayName -like "$packageSearch*" `
                           -and `
                           $_.DisplayVersion -ge 2.09 `
                           -and `
                           $_.DisplayVersion -lt 3.0 } `
           | ForEach-Object { $_.InstallLocation }
$installPath = $regPath
# search $env:ChocolateyBinRoot for portable install
if (! $installPath) {
  Write-Host "$($packageSearch) not found in registry."
  $binRoot = Get-BinRoot
  $portPath = Join-Path $binRoot "keepass"
  $installPath = Get-ChildItem -Directory $portPath* -ErrorAction SilentlyContinue
}
if (! $installPath) {
  Write-Host "$($packageSearch) not found in $($env:ChocolateyBinRoot)"
  throw "$($packageSearch) install location could not be found."
}
$pluginPath = (Get-ChildItem -Directory $installPath\Plugin*).FullName
if ($pluginPath.Count -eq 0) {
  throw "Plugins directory not found."
}
$installFile = Join-Path $pluginPath "$($packageName).plgx"
Remove-Item -Path $installFile `
            -Force `
            -ErrorAction Continue
if ( Get-Process -Name "KeePass" `
                 -ErrorAction SilentlyContinue ) {
  Write-Warning "$($packageSearch) is running. $($packageName) will be removed at next restart of $($packageSearch)." 
}
} catch {
  throw $_.Exception
}