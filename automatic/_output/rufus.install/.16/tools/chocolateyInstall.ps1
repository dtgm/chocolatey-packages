$packageName = 'rufus.install'
$packageVersion = '.16'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.16.exe'
$checksum = 'ded51bb9c9f99cc2f688f541e77a01c6ce785d3f6a10dbe15b894bcdb05fe6a7'
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