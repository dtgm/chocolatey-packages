$packageName = 'kvrt'
$url = 'http://devbuilds.kaspersky-labs.com/devbuilds/KVRT/latest/full/KVRT.exe'
$checksum = '8be3858d8ad21863c45a574f71c37a948a5027e2f33a4c7da6836bb16fa8f276'
$checksumType = 'sha256'
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsPath "kvrt.exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"

  # create empty sidecars so shimgen only creates one shim
  Set-Content -Path ("$installFile.ignore") `
              -Value $null

  # create batch to start executable
  $batchStart = Join-Path $toolsPath "kvrt.bat"
  'start %~dp0\kvrt.exe -accepteula' | Out-File -FilePath $batchStart -Encoding ASCII
  Install-BinFile "kvrt" "$batchStart"
} catch {
  throw $_.Exception
}