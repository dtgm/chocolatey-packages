$packageName = 'ftpdmin'
$url = 'http://www.sentex.net/~mwandel/ftpdmin/ftpdmin.exe'
$checksum = '6503e90f6d8a0ba43207d5ed40fa58142ef2fea7'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"
} catch {
  throw $_.Exception
}