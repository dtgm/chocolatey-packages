$packageName = 'cmdermini.portable'
$url = 'https://github.com/bliker/cmder/releases/download/v1.1.3/cmder_mini.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
