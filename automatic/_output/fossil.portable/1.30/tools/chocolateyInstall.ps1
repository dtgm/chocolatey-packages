try {
  $package = 'fossil'
  $PackageVersion = "1.30"
  $url = "http://www.fossil-scm.org/download/fossil-w32-20150119112900.zip"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}