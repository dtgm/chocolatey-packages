$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.7/electron-v0.33.7-win32-ia32.zip'
$checksum = '62e318a35ab418d8ceb1802f8bbdd7d3'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.7/electron-v0.33.7-win32-x64.zip'
$checksum64 = '5018ce38581475f921b62526bdd9fe5b'
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