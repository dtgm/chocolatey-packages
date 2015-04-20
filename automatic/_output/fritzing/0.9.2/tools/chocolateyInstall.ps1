$packageName = 'fritzing'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'http://fritzing.org/download/0.9.2b/windows/fritzing.0.9.2b.32.pc.zip'
$checksum = '7d9785c8ea041b7aa8d458c481d97ffefb11e83f'
$checksumType = 'sha1'
$url64 = 'http://fritzing.org/download/0.9.2b/windows-64bit/fritzing.0.9.2b.64.pc.zip'
$checksum64 = '0a6035e39d89566e016ad55f842b049965c11926'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"