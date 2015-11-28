$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.35.2/electron-v0.35.2-win32-ia32.zip'
$checksum = 'e6ab23db0c860d4c72d9608a97a14b38'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.35.2/electron-v0.35.2-win32-x64.zip'
$checksum64 = 'dee8a0a4e2c13619e32ca328eca07c1f'
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