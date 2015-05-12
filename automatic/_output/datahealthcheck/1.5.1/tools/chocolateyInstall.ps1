$packageName = 'datahealthcheck'
$packageVersion = '1.5.1'
$url = 'https://github.com/cryptogeek/DataHealthCheck/blob/master/DataHealthCheck/bin/Release/DataHealthCheck.exe?raw=true'
$checksum = '3237ff1275f388c96b2f43ada98e530db2e03ed2'
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