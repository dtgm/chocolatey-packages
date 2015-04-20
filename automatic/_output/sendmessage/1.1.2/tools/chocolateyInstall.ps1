$packageName = 'sendmessage'
$url = 'http://sourceforge.net/projects/sendmessage/files/SendMessage-1.1.2.exe/download'
$checksum = '437e5c7b2c2ed06bdce8882c6524fb10e54a1eba'
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