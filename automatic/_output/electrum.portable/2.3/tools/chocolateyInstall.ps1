$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/electrum-2.3-portable.exe'
$checksum = '1798f83f47a1640643f8ed1791d96acab71d2d4d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "electrum.exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"
  # create an empty sidecar metadata file for closed-source shimgen.exe to prevent blank black window
  Set-Content -Path ("$installFile.gui") `
              -Value $null  
} catch {
  throw $_.Exception
}