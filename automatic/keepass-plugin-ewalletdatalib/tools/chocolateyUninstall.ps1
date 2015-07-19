# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}

$packageName = '{{PackageName}}'
$typName = '.dll'
$packageSearch = 'KeePass Password Safe'

try {
Write-Verbose "Checking KeePass is not running..."
if (Get-Process -Name "KeePass" `
                -ErrorAction SilentlyContinue) {
  Write-Warning "$($packageSearch) is running. Please save any opened databases and close $($packageSearch) before attempting to uninstall KeePass plugins."
  throw
}

Write-Verbose "Searching registry for installed KeePass..."
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
  throw "Plugin directory not found."
}
Write-Verbose "`t...found."

Write-Verbose "Removing plugin files..."
$installFile = Join-Path $pluginPath $typName
Remove-Item -Path $installFile `
            -Force `
            -ErrorAction Continue
} catch {
  throw $_.Exception
}