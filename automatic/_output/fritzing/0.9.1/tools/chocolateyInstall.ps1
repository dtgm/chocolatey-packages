$packageName = 'fritzing'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'http://fritzing.org/download/0.9.1b/windows/fritzing.0.9.1b.32.pc_1.zip'
$checksum = 'ef01e6567aaec3cd0550955d827581b1b08461ab'
$checksumType = 'sha1'
$url64 = 'http://fritzing.org/download/0.9.1b/windows-64bit/fritzing.0.9.1b.64.pc_1.zip'
$checksum64 = '3d0155396aa57de5d8998f76d882461a96395b80'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"