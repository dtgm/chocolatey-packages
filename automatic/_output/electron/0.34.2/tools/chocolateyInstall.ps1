$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.34.2/electron-v0.34.2-win32-ia32.zip'
$checksum = '77d7af04bfaac4ba233bb4826cb6d74a'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.34.2/electron-v0.34.2-win32-x64.zip'
$checksum64 = '566b49fdbf1b19746cd0228e3286eb22'
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