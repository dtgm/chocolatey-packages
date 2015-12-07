$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.35.4/electron-v0.35.4-win32-ia32.zip'
$checksum = '531c9caa09fd4b2bd3c8f9d165e57808'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.35.4/electron-v0.35.4-win32-x64.zip'
$checksum64 = 'c156cfa8b07150c4f3236de58516d44b'
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