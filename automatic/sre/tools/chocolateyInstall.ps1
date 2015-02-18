try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $url = '{{DownloadUrlx64}}'
  $toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $toolsDir "$($packageName).exe"
  Get-ChocolateyWebFile "$packageName" "$installFile" "$url"
  Set-Content -Path ("$installFile.gui") -Value $nul
} catch {
  throw $_.Exception
}