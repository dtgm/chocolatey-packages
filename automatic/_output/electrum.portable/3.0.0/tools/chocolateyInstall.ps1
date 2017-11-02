$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/3.0/electrum-3.0.0-portable.exe'
$checksum = '0e157dfcb955b4405e59ad9f5251e66296e9cb1946ff07b54789db8acd33d898'
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