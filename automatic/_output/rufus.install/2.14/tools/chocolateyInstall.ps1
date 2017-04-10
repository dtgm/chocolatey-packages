$packageName = 'rufus.install'
$packageVersion = '2.14'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.14.exe'
$checksum = 'c1191e6690cbe5d872c3937a4bd352cbfa5178078d6f31c2bc2dcab9a20f237c'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "rufus.exe"
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