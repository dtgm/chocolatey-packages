$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'

try { 
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

} catch {
  throw $_.Exception 
}