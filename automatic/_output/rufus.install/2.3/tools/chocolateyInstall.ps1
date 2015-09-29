$packageName = 'rufus.install'
$packageVersion = '2.3'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.3.exe'
$checksum = 'edcce921c3def1c19e23ac96c5864a00d270ab83'
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