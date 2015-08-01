$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.30.2/electron-v0.30.2-win32-ia32.zip'
$checksum = 'f2d63e3e22faddea0a65c48f8b6e5b24'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.30.2/electron-v0.30.2-win32-x64.zip'
$checksum64 = '732b642462006f00fd41acaf76297557'
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