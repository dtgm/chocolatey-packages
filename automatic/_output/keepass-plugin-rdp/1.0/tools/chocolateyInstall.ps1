# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}

$packageName = 'keepass-plugin-rdp'
$typName = 'RDPPlugin.dll'
$packageSearch = "KeePass Password Safe"
$url = 'http://keepass.info/extensions/v2/rdpplugin/RDPPlugin-1.0.zip'
$checksum = 'bf2f28c59ee61a17fbfc152cce633395139e1800'
$checksumType = 'sha1'

try {
Write-Verbose "Searching registry for installed KeePass..."
$regPath = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                            -ErrorAction:SilentlyContinue `
           | Where-Object {$_.DisplayName -like "$packageSearch*" `
                           -and `
                           $_.DisplayVersion -ge 2.09 `
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

Write-Verbose "Searching for plugin directory..."
$pluginPath = (Get-ChildItemDir $installPath\Plugin*).FullName
if ($pluginPath.Count -eq 0) {
  $pluginPath = Join-Path $installPath "Plugins"
  [System.IO.Directory]::CreateDirectory($pluginPath)
}
Write-Verbose "`t...found."

Write-Verbose "Download and extract DLL files into Plugins dir"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$pluginPath" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Cannot rename DLL, expects default name
#Write-Verbose "Renaming DLL file so it is clear which plugins are managed via choco"
#$typPlugin = Join-Path $pluginPath $typName
#$chocoPlugin = Join-Path $pluginPath "$($packageName).dll"
#Move-Item -Path $typPlugin -Destination $chocoPlugin -Force -ErrorAction Continue
if ( Get-Process -Name "KeePass" `
                 -ErrorAction SilentlyContinue ) {
  Write-Warning "$($packageSearch) is currently running. Plugin will be available at next restart of $($packageSearch)." 
} else {
  Write-Host "$($packageName) will be loaded the next time KeePass is started."
  Write-Host "Please note this plugin may require additional configuration. Look for a new entry in KeePass' Menu>Tools"
}} catch {
  throw $_.Exception
}