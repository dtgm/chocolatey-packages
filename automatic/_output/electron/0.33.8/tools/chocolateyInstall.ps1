$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.33.8/electron-v0.33.8-win32-ia32.zip'
$checksum = '0e7da5130c3f5ba88c4dd06b9e40ddbd'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.33.8/electron-v0.33.8-win32-x64.zip'
$checksum64 = '992af0a5048e553e06e36874a542e300'
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