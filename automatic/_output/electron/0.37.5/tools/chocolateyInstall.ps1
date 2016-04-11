$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v0.37.5/electron-v0.37.5-win32-ia32.zip'
$checksum = '1c20d99e3552b9a45850ec9c970c13ef'
$checksumType = 'md5'
$url64 = 'https://github.com/atom/electron/releases/download/v0.37.3/electron-v0.37.3-win32-x64.zip'
$checksum64 = 'b67af6c6f2959a7c6dfa084c2f2dd1d8'
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