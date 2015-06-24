$packageName = 'audioswitcher'
$url = 'http://services.audioswit.ch/versions/1.6.5.1/AudioSwitcher.zip'
$checksum = '7d2a04901decb0e03c641d2f01bc8afeb84bf4b6'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
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
