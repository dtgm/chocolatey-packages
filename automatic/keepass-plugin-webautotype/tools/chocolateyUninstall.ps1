# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}

$packageName = '{{PackageName}}'
$typName = 'WebAutoType.plgx'
$packageSearch = 'KeePass Password Safe*'

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
           | Where-Object {$_.DisplayName -like "$packageSearch"} `
           | ForEach-Object {$_.InstallLocation}
$installPath = $regPath
if (! $installPath) {
  Write-Verbose "Searching $env:ChocolateyBinRoot for portable install..."
  $binRoot = Get-BinRoot
  $portPath = Join-Path $binRoot "keepass"
  $installPath = Get-ChildItemDir $portPath* -ErrorAction SilentlyContinue
}
if (! $installPath) {
  Write-Verbose "Searching $env:Path for unregistered install..."
  $installFullName = (Get-Command keepass -ErrorAction SilentlyContinue).Path
  if (! $installFullName) {
    $installPath = [io.path]::GetDirectoryName($installFullName)
  }
}
if (! $installPath) {
  Write-Warning "$($packageSearch) not found."
  throw
}
Write-Verbose "`t...found."

$pluginPath = Join-Path $installPath "Plugins"
$installFile = Join-Path $pluginPath "$($packageName).plgx"
if (Test-Path $pluginPath) {
  Write-Warning "Could not find $($pluginPath.FullName)"
} else {
  Write-Verbose "Removing `"$($packageName).plgx`" in `"$($pluginPath)`""
  if (Test-Path $installFile) {
    Remove-Item -Path $installFile -Force
  } else ($file -gt 1) {
    Write-Warning "More than 1 copy of $($typName) was found in $($installPath). This may mean multiple plugins are unnecessarily being loaded into KeePass. It is strongly advised you clean up $($installPath)"
  }
}} catch {
  throw $_.Exception
}