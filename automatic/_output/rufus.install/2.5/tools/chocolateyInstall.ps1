$packageName = 'rufus.install'
$packageVersion = '2.5'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.5.exe'
$checksum = '33ea32d49411ce016a0a6c74565c1468fe517375'
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