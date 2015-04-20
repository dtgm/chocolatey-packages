$packageName = 'bitmessage'
$url = 'https://bitmessage.org/download/windows/Archive/Bitmessage v0.4.4.exe'
$checksum = '05f286aaa0ce521081ce0607e0105d96407871e0'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"

  Set-Content -Path ("$installFile.gui") `
              -Value $null  
} catch {
  throw $_.Exception
}