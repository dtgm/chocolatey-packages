try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $url = '{{DownloadUrl}}'
  $checksum = '{{Checksum}}'
  $checksumType = 'sha1'
  $toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $toolsDir "$($packageName).exe"

  Get-ChocolateyWebFile "$packageName" "$installFile" "$url" -checksum "$checksum" -checksumType "$checksumType"
  Set-Content -Path ("$installFile.gui") -Value $null

} catch {
  throw $_.Exception
}
