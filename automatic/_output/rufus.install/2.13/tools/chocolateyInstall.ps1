$packageName = 'rufus.install'
$packageVersion = '2.13'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.13.exe'
$checksum = '3e45f4b7f02d47aecc2d777ca88a730bc281115e780292b12b673b10af4c798e'
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