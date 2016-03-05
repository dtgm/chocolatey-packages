$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.10/electron-v0.36.10-win32-ia32.zip'
$checksum = 'add7e8909eb33d23ba7f8112269321e7'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.10/electron-v0.36.10-win32-x64.zip'
$checksum64 = '0239795a4afb61d3dbb2e77fa34ad833'
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