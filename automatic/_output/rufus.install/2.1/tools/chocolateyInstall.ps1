$packageName = 'rufus.install'
$packageVersion = '2.1'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.1.exe'
$checksum = 'e51a7811464be1acadf6e72ba3a66aba0da438cd'
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