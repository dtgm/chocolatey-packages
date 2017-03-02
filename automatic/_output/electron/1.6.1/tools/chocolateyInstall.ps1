$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.6.1/electron-v1.6.1-win32-ia32.zip'
$checksum = 'b5ca9f9508a6476bee28fc1b52f09c0d'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.6.1/electron-v1.6.1-win32-x64.zip'
$checksum64 = '09478be2b5197abead8eb260d5f210cd'
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