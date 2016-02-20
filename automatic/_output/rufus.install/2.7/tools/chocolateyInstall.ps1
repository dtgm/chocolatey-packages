$packageName = 'rufus.install'
$packageVersion = '2.7'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.7.exe'
$checksum = 'baa25eca0e8dc87c99b5a4702036ebb70a2af1d6'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "rufus.exe"
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