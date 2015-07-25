$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.30.1/electron-v0.30.1-win32-ia32.zip'
$checksum = 'fee70dfbf44fcbc3ba6e44383c7ba592'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.30.1/electron-v0.30.1-win32-x64.zip'
$checksum64 = '8c322df8d69665fe848f1bd346516280'
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