$packageName = 'bulkrenameutility.portable'
$url = 'http://www.bulkrenameutility.co.uk/Downloads/BRU_NoInstall.zip'

try { 
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}