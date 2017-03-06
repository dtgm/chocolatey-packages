$packageName = 'hub'
$url = 'https://github.com/github/hub/releases/download/v2.2.4/hub-windows-386-2.2.4.zip'
$checksum = '88c6dfbd025d227ac2f1b21f22ccc7d5'
$checksumType = 'md5'
$url64 = 'https://github.com/github/hub/releases/download/v2.2.4/hub-windows-amd64-2.2.4.zip'
$checksum64 = 'e639cacffab0e1d2e9b070777aa63238'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"