$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.8.2/electron-v1.8.2-win32-ia32.zip'
$checksum = 'da4bf3f0255765d7019cfc9add09c4e2'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.8.2/electron-v1.8.2-win32-x64.zip'
$checksum64 = 'ce8c9c91400311c539fa16dc6c4f6d2c'
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