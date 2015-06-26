try {
  $scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $exe = "$scriptDir\qttabbar.exe"
  Install-ChocolateyZipPackage 'QTTabBar' 'http://qttabbar.wdfiles.com/local--files/qttabbar/QTTabBar_513.zip' $scriptDir
  Install-ChocolateyInstallPackage 'QTTabBar' 'exe' "/QI" "$exe"

  Write-ChocolateySuccess 'QTTabBar'
} catch {
  Write-ChocolateyFailure 'QTTabBar' "$($_.Exception.Message)"
  throw 
}