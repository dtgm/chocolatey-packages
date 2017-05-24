$packageName = 'rufus.install'
$packageVersion = '.15'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.15.exe'
$checksum = '13d5d1aa0663f78db23701cc336956a3e5bc7f7b90981f0b46d4d219c126b498'
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