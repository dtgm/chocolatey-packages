try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $url = '{{DownloadUrl}}'
  $checksum = '{{Checksum}}'
  $checksumType = 'sha1'
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $installDir "$($packageName).exe"

  Get-ChocolateyWebFile "$packageName" "$installFile" "$url" -Checksum "$checksum" -ChecksumType "$checksumType
} catch {
  throw $_.Exception
}
