$packageName = 'datahealthcheck'
$packageVersion = '1.5.0'
$url = 'https://github.com/cryptogeek/DataHealthCheck/blob/master/DataHealthCheck/bin/Release/DataHealthCheck.exe?raw=true'
$checksum = '6a3f890b35046214236ae6ac789c71accced1fc0'
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