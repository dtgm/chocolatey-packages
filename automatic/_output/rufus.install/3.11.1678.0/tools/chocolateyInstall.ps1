$ErrorActionPreference = 'Stop';

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileName       = "$toolsDir\Rufus-3.11.appxbundle"
$version        = "3.11.1678.0"

$WindowsVersion=[Environment]::OSVersion.Version
if ($WindowsVersion.Major -ne "10") {
  throw "This package requires Windows 10."
}

$AppxPackageName = "Rufus"

if ((Get-AppxPackage -name $AppxPackageName).Version -Match $version) {
  if($env:ChocolateyForce) {
    # you can't install the same version of an appx package, you need to remove it first
    Write-Host Removing already installed version first.
    Get-AppxPackage -Name Rufus | Remove-AppxPackage
  } else {
    Write-Host The $version version of Rufus is already installed. If you want to reinstall use --force
    return
  }
}

Add-AppxPackage -Path $fileName
