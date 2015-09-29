$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.30.6/electron-v0.30.6-win32-ia32.zip'
$checksum = '7b40817a61976ea4a7542f0ced6658f3'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.30.6/electron-v0.30.6-win32-x64.zip'
$checksum64 = '624025ced98d6ea38981aa4d20afdb55'
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