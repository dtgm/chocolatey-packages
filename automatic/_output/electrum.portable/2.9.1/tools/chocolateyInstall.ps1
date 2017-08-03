$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/2.9.1/electrum-2.9.1-portable.exe'
$checksum = 'f5ba0be17054b50ed32beb7e5b8ab64e3c3a3c1316e0b47da5d61e7261b6e436'
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