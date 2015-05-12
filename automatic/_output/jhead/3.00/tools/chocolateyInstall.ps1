$packageName = 'jhead'
$url = 'http://www.sentex.net/~mwandel/jhead/jhead.exe'
$checksum = '14638f2bf606805bf82b71feb2ee308f46f430c0'
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
  throw
}