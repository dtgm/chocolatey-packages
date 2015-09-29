$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.31.0/electron-v0.31.0-win32-ia32.zip'
$checksum = 'cc0ab74ae5205accf7fbe255220eec4a'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.31.0/electron-v0.31.0-win32-x64.zip'
$checksum64 = '07402ce3838dbf0a82d7eb665a45135c'
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