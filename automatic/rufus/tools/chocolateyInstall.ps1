$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "$url64" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType" `
                        -Checksum64 "$checksum64" `
                        -ChecksumType64 "$checksumType64"
  Set-Content -Path ("$installFile.gui") -Value $null

} catch {
  throw $_.Exception
}
