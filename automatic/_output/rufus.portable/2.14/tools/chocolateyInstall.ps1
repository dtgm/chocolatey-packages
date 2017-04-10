$packageName = 'rufus.portable'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.14p.exe'
$checksum = 'c1191e6690cbe5d872c3937a4bd352cbfa5178078d6f31c2bc2dcab9a20f237c'
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