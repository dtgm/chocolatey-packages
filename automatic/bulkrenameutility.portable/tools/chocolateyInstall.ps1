$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'

try { 
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

} catch {
  throw $_.Exception 
}