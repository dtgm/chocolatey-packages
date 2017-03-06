$packageName = 'rufus.portable'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.10p.exe'
$checksum = '034d866644c3606d047f814df59caaa1d8e33ec298345071410a902a8b696d88'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "rufusp.exe"
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