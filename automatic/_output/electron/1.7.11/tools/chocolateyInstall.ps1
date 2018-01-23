$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.7.11/electron-v1.7.11-win32-ia32.zip'
$checksum = 'eb2709ef1961d19fd0dbe1f96008391b'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.7.11/electron-v1.7.11-win32-x64.zip'
$checksum64 = '63922b1ba0820592a071231506727b8e'
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