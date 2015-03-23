$packageName = 'frhed.portable'
$url = 'http://sourceforge.net/projects/frhed/files/1.%20Stable%20Releases/1.6.0/Frhed-1.6.0-exe.zip/download'
$checksum = 'ae77fdd1b68d1da2d4a2f61574da4685c29a745d'
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