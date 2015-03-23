$packageName = 'nexusfont.portable'
$url = 'http://www.xiles.net/pds/nexusfont2.5.8.zip'
$checksum = '279310de43bcf7a6caaf822595971b9015268976'
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