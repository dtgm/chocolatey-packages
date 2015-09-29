$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.30.5/electron-v0.30.5-win32-ia32.zip'
$checksum = '9984e768856713b58306358adb5353e5'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.30.5/electron-v0.30.5-win32-x64.zip'
$checksum64 = '10833db0d440a96ae27ffceae6f12127'
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