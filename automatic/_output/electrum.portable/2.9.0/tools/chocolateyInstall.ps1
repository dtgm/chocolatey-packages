$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/2.9.0/electrum-2.9.0-portable.exe'
$checksum = '732ed6d68fd43d08f6ee63400f0be6f9150b721fe5815b975ae066cfe0b9abeb'
$checksumType = 'sha256'
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