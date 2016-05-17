$packageName = 'rufus.install'
$packageVersion = '2.9'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.9.exe'
$checksum = 'aae8a0389f853776adb43482a6a2a12712b70917'
$checksumType = 'sha1'
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