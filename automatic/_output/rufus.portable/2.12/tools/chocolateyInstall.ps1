$packageName = 'rufus.portable'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.12p.exe'
$checksum = 'cdae63982321d72aacb332c44c57438ad4a10b829f76c93e5bf427f18df1170a'
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