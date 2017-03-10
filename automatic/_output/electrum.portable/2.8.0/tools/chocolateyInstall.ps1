$packageName = 'electrum.portable'
$url = 'https://download.electrum.org/2.8.0/electrum-2.8.0-portable.exe'
$checksum = 'ac41d35b164b0e87e1bd9b9fad439c78f3368a77e4428ab6a6391260967ad766'
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