$packageName = 'rufus.install'
$packageVersion = '.17'
$url = 'http://rufus.akeo.ie/downloads/rufus-2.17.exe'
$checksum = '260fbc40c09d3c175a62b94d9df1a8c5ccb017a69c8c50bfe9aaeb1df1f45ff6'
$checksumType = 'sha256'
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