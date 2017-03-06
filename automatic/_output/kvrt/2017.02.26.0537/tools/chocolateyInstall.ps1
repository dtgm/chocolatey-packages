$packageName = 'kvrt'
$url = 'http://devbuilds.kaspersky-labs.com/devbuilds/KVRT/latest/full/KVRT.exe'
$checksum = 'c2ce6ab1f4b588c08652daa674299ca75708bcc3f1df0e0326dc7493d11de151'
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