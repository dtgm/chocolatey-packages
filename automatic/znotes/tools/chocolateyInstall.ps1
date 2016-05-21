try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $url = '{{DownloadUrlx64}}'
  $checksum = '{{Checksum}}'
  $checksumType = 'sha256'
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $installDir "$($packageName).exe"

  Get-ChocolateyWebFile "$packageName" "$installFile" "$url" -Checksum "$checksum" -ChecksumType "$checksumType" 
  Set-Content -Path ("$installFile.gui") -Value $null

} catch {
  throw $_.Exception
}
