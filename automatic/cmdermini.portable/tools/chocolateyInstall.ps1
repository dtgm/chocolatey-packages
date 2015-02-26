$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'

# Issue: config files were mutable every upgrade as stored in $ChocolateyInstall\lib\{programName}.{version}\tools 
# Solution: move installDir to $chocolateyBinRoot (environment variable set by package "BinRoot")
# See https://groups.google.com/d/msg/chocolatey/jCK5DkXeD5U/ZX1HoOiYsH8J
#  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$binRoot = Get-BinRoot
$installDir = Join-Path $binRoot "cmdermini"

try { 
  Write-Verbose "Chocolatey is installing $packageName to $installDir"
  if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}
  $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
  $file = Join-Path $tempDir "$($packageName).zip"
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
  
  # Add "cmder.exe" to path
  Write-Verbose "Adding `'$installDir`' to path"
  Install-ChocolateyPath "$installDir"

  # Copy previous config files to new install location
  $prevCmderConfig = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\..\..\$packageName.1.1.1\tools\cmder\config"
  $newCmderConfig = Join-Path $installDir "config"
  if (Test-Path $prevCmderConfig){
    Write-Verbose "Migrating Cmder config files from version 1.1.1 to new install location."
    Write-Verbose "Default Cmder config files for version {{PackageVersion}} will be backed up to $binRoot\cmdermini\config\*.bak"
    Write-Verbose "Note: To modify file extensions from GUI, it is necessary to check the box in File Explorer"
    Write-Verbose "      Menu-toolbar -> View -> (Check) File name extensions"
    Start-Sleep -seconds 3
    Get-ChildItem $prevCmderConfig | foreach-object{ 
      if (Test-Path $newCmderConfig\$_){ 
        Move-Item ("$newCmderConfig\" + $_.Name) ("$newCmderConfig\" + $_.Name + ".bak") -force
        Copy-Item $_.FullName ("$newCmderConfig\" + $_.Name) -force 
      } Else { 
        Copy-Item $_.FullName ("$newCmderConfig\" + $_.Name)
      }
    }
  }
  $prevMsysgitConfig = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\..\..\$packageName.1.1.1\tools\cmder\vendor\msysgit\etc"
  $newMsysgitConfig = Join-Path $installDir "vendor\msysgit\etc"
  if (Test-Path $prevMsysgitConfig){
    Write-Verbose "Migrating config files from version 1.1.1 to new install location."
    Write-Verbose "Default config files for version {{PackageVersion}} will be backed up to $binRoot\cmdermini\vendor\msysgit\etc\*.bak"
    Write-Verbose "Note: To modify file extensions from GUI, it is necessary to check the box in File Explorer"
    Write-Verbose "      Menu-toolbar -> View -> (Check) File name extensions"
    Start-Sleep -seconds 3
    Get-ChildItem $prevMsysgitConfig | foreach-object{ 
      if (Test-Path $newMsysgitConfig\$_){ 
        Move-Item ("$newMsysgitConfig\" + $_.Name) ("$newMsysgitConfig\" + $_.Name + ".bak") -force
        Copy-Item $_.FullName ("$newMsysgitConfig\" + $_.Name) -force 
      } Else { 
        Copy-Item $_.FullName ("$newMsysgitConfig\" + $_.Name)
      }
    }
  }
} catch {
  throw $_.Exception 
}