$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.9/electron-v0.33.9-win32-ia32.zip'
$checksum = '6dc4f4160083a51e50ec0feb4ef80ed9'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.9/electron-v0.33.9-win32-x64.zip'
$checksum64 = 'e17170308cc653e52d09898ad9c129ad'
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