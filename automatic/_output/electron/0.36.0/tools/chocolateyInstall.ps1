$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.0/electron-v0.36.0-win32-ia32.zip'
$checksum = 'a43f9fad2b3d712b106d0cc3c745f172'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.0/electron-v0.36.0-win32-x64.zip'
$checksum64 = 'cdd87b0edab393dbc7d8442c52b741f8'
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