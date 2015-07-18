$packageName = 'combofix'
$url = 'http://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$checksum = '13bc188e5c7cf50de91c5414be9fdc0c671100bd'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ComboFix.exe"
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