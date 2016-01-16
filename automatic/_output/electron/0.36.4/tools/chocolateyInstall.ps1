$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.4/electron-v0.36.4-win32-ia32.zip'
$checksum = '3ffbe1934a92554b1f544e54c93901d3'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.4/electron-v0.36.4-win32-x64.zip'
$checksum64 = '07157cb582b17282e83e8d608b1b4554'
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