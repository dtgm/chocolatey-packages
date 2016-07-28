$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.1/electron-v1.3.1-win32-ia32.zip'
$checksum = '0b93428147f762cfbbe1ef3bb8e72b3c'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.1/electron-v1.3.1-win32-x64.zip'
$checksum64 = '86f971b3aa8f44f21c506c9cb5d3cc18'
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