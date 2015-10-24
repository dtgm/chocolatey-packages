$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.34.1/electron-v0.34.1-win32-ia32.zip'
$checksum = '7dff72a0691a777d8d30910a9d359bc6'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.34.1/electron-v0.34.1-win32-x64.zip'
$checksum64 = 'bab3a9173f6f00c3f906e44f3d3a4dc0'
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