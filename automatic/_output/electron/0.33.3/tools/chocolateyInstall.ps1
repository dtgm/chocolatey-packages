$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.3/electron-v0.33.3-win32-ia32.zip'
$checksum = 'e925df26d5f66667378687ab30850a7a'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.3/electron-v0.33.3-win32-x64.zip'
$checksum64 = 'b0fe8f6f684dbbcc538b806e49e761d5'
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