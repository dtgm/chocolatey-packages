$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.9/electron-v0.36.9-win32-ia32.zip'
$checksum = '1666484bb7d5883a74699b9a4b07795e'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.9/electron-v0.36.9-win32-x64.zip'
$checksum64 = '2b34054aab0f04920be3700d444092b0'
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