$packageName = 'windows-tweaker.portable'
$url = 'https://tweaker.blob.core.windows.net/downloads/Windows_Tweaker_5.3.1-Portable.exe'
$checksum = '175bf480c139ce24c3e5578bacd8e5c6eb79f428'
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