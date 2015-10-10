$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.6/electron-v0.33.6-win32-ia32.zip'
$checksum = 'e5d510b2c07ac395ceda1563fbba7937'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.6/electron-v0.33.6-win32-x64.zip'
$checksum64 = 'e6de364be7733af2cc1c55480261b54a'
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