$packageName = 'rufus.portable'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.18p.exe'
$checksum = 'e82abd7f2c8f8c866141634a1ce10da8ebf3c58b68cb2eaa351345777bb3f67c'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "rufusp.exe"
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