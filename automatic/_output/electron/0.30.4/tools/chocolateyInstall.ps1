$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.30.4/electron-v0.30.4-win32-ia32.zip'
$checksum = '107df8f962740ae52cd6c0f1e7d5e87c'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.30.4/electron-v0.30.4-win32-x64.zip'
$checksum64 = '4c8748f853bdfddeb4dfab3afb32df49'
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