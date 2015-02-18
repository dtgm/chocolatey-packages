try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $url = '{{DownloadUrl}}'
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $installDir "$($packageName).exe"
  Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
  
  $checksum = '{{Checksum}}'
  $checksum = '{{Checksumx64}}'  
} catch {
  throw $_.Exception
}