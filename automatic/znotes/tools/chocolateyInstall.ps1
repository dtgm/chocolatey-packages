try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $url = '{{DownloadUrlx64}}'
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $installDir "$($packageName).exe"
  Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
} catch {
  throw $_.Exception
}