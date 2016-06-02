$packageName = 'fritzing'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'http://fritzing.org/download/0.9.3b/windows/fritzing.0.9.3b.32.pc.zip'
$checksum = '226f892285d2806ddda5c158270b34f47613b0ddd0c4f4176a448708561550cd'
$checksumType = 'sha256'
$url64 = 'http://fritzing.org/download/0.9.3b/windows-64bit/fritzing.0.9.3b.64.pc.zip'
$checksum64 = 'a57531567b5e745fb1eb22f7c168a154ee07ef83a21917656342fcf302de2037'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"