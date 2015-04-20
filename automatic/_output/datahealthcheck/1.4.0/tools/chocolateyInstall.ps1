$packageName = 'datahealthcheck'
$packageVersion = '1.4.0'
$url = 'https://github.com/cryptogeek/DataHealthCheck/raw/master/DataHealthCheck/bin/Release/DataHealthCheck.exe'
$checksum = 'f991e650bdc31b2ce1d002ee6a0be78e765b7cca'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"
  Set-Content -Path ("$installFile.gui") `
              -Value $null

} catch {
  throw $_.Exception
}