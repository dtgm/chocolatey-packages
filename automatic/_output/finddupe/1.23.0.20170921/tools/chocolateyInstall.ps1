$packageName = 'finddupe'
$url = 'http://www.sentex.net/~mwandel/finddupe/finddupe.exe'
$checksum = 'bac85b0f046150315dbf592c381e1e717bf41401a32d7fae19e67f582a2c0128'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"