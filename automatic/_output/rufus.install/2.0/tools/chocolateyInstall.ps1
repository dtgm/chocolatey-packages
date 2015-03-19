$packageName = 'rufus.install'
$packageVersion = '2.0'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.0.exe'
$checksum = '9cc2d6c8f169b1652a2744ce5560be35403c28ca'
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