try {
  $package = 'processhacker'
  $PackageVersion = "2.33"
  $url = "http://processhacker.googlecode.com/files/processhacker-2.33-bin.zip"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}