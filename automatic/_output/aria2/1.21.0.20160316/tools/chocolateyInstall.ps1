$packageName = 'aria2'
$url = 'https://github.com/tatsuhiro-t/aria2/releases/download/release-1.21.0/aria2-1.21.0-win-32bit-build1.zip'
$checksum = 'd4975a0299af16684ad8e59f70ea9191'
$checksumType = 'md5'
$url64 = 'https://github.com/tatsuhiro-t/aria2/releases/download/release-1.21.0/aria2-1.21.0-win-64bit-build1.zip'
$checksum64 = 'eea9ac146c721ed1393bd8726f326a08'
$checksumType64 = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64 "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"