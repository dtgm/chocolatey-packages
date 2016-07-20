$packageName = 'rufus.install'
$packageVersion = '.10'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.10.exe'
$checksum = '034d866644c3606d047f814df59caaa1d8e33ec298345071410a902a8b696d88'
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