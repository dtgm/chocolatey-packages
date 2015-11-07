$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.34.3/electron-v0.34.3-win32-ia32.zip'
$checksum = '1477d51712d789ce7f41e10a13894dd0'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.34.3/electron-v0.34.3-win32-x64.zip'
$checksum64 = '922fa187caa1aa28ceacb41f303b6163'
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