$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/electrum-2.3.1-portable.exe'
$checksum = '9b83e46f9ae176b2a34681a5ddc60fb59dc2fbf9'
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