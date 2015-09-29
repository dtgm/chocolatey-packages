$packageName = 'rufus.install'
$packageVersion = '2.4'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.4.exe'
$checksum = '245d406cc11c93ce6c01c8c92de07ad9b9cecfff'
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