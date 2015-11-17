$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.35.0/electron-v0.35.0-win32-ia32.zip'
$checksum = '792a407be9fcc46395ea0333e09c06df'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.35.0/electron-v0.35.0-win32-x64.zip'
$checksum64 = '9c77643b1f3fcd8eb688263b42e2e7f1'
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