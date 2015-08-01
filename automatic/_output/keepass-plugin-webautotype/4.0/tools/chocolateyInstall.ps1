# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}

$packageName = 'keepass-plugin-webautotype'
$typName = 'WebAutoType.plgx'
$packageSearch = 'KeePass Password Safe'
$url = 'http://iweb.dl.sourceforge.net/project/webautotype/v4.0/WebAutoType-v4.0.zip'
$checksum = '1d7dba888a1b4a2f59c1704359bffc42932148fe'
$checksumType = 'sha1'

try {
Write-Verbose "Searching registry for installed KeePass..."
$regPath = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                            -ErrorAction:SilentlyContinue `
           | Where-Object {$_.DisplayName -like "$packageSearch*" `
                           -and `
                           $_.DisplayVersion -ge 2.19 `
                           -and `
                           $_.DisplayVersion -lt 3.0 } `
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

$pluginDir = "Plugins"
$pluginPath = Join-Path $installPath $pluginDir
Write-Verbose "Installing plugins into $($pluginPath)"
if (![System.IO.Directory]::Exists($pluginPath)) {[System.IO.Directory]::CreateDirectory($pluginPath)}

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Write-Verbose "Downloading and extracting zip into $($toolsDir)."
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Removing any plugin with name $($typName) in $($installPath) to prevent duplicate plugin loading"
$cur = Get-ChildItem -Path $installPath -Filter $typName -Recurse
if ($cur -eq 1) {
  Remove-Item $cur.FullName
} ElseIf ($cur -gt 1) {
  Write-Warning "More than 1 copy of $($typName) was found in $($installPath). This may mean multiple plugins are unnecessarily being loaded into KeePass. It is strongly advised you clean up $($installPath)"
}

Write-Verbose "Renaming PLGX file so it is clear which plugins are managed by chocolatey"
$typPlugin = Join-Path $toolsDir $typName
$chocoPlugin = Join-Path $pluginPath "$($packageName).plgx"
Move-Item -Path $typPlugin -Destination $chocoPlugin -Force -ErrorAction Stop

if (Get-Process -Name "KeePass" `
                 -ErrorAction SilentlyContinue) {
  Write-Warning "$($packageSearch) is currently running. Plugin will be available at next restart of $($packageSearch)." 
} else {
  Write-Host "$($packageName) will be loaded the next time KeePass is started."
  Write-Host "Please note this plugin may require additional configuration. Look for a new entry in KeePass' Menu>Tools"
}} catch {
  throw $_.Exception
}