$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.2/electron-v0.36.2-win32-ia32.zip'
$checksum = '8d1fa48141164000b3a08fb187e02953'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.2/electron-v0.36.2-win32-x64.zip'
$checksum64 = 'da51465aec88a3aab2e8bf76cb9ce036'
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