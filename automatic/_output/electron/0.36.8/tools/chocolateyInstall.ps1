$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.8/electron-v0.36.8-win32-ia32.zip'
$checksum = '7b418fe0c7f5b454a7ed621e03ebb5a6'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.8/electron-v0.36.8-win32-x64.zip'
$checksum64 = 'e348fef433cf986fbe3fe24736acdc4c'
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