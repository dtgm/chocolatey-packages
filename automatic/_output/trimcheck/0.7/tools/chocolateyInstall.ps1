$packageName = 'trimcheck'
$url = 'http://files.thecybershadow.net/trimcheck/trimcheck-0.7.exe'
$checksum = '9d22ab57c32da3833e605c4f804961da1800f060'
$checksumType = 'sha1'
$url64 = 'http://files.thecybershadow.net/trimcheck/trimcheck-0.7-win64.exe'
$checksum64 = 'bf69f4b6e7f58060cab33b6661eb81538097b2e1'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "trimcheck.exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Url64bit "$url64" `
                      -Checksum "$checksum" `
                      -Checksum64 "$checksum64" `
                      -ChecksumType "$checksumType" `
                      -ChecksumType64 "$checksumType64"