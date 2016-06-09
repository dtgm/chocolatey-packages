try {
  $packageName = '{{PackageName}}'
  $url = '{{DownloadUrlx64}}'
  $checksum = '{{Checksum}}'
  $checksumType = 'sha256'
  $toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = Join-Path $toolsDir "$($packageName).exe"

  Get-ChocolateyWebFile "$packageName" "$installFile" "$url" -Checksum "$checksum" -ChecksumType "$checksumType" 
  Set-Content -Path ("$installFile.gui") -Value $null

} catch {
  throw $_.Exception
}
