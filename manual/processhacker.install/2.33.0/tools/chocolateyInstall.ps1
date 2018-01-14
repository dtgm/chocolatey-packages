﻿try {
    $package = 'processhacker'
    $PackageVersion = "2.33"
    $url = "https://downloads.sourceforge.net/project/processhacker/processhacker2/processhacker-2.33-setup.exe"
    $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
    $dir = $env:ChocolateyInstall
    Install-ChocolateyPackage $package 'exe' "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /DIR=$dir\lib\processhacker" 'https://downloads.sourceforge.net/project/processhacker/processhacker2/processhacker-2.33-setup.exe'

} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}