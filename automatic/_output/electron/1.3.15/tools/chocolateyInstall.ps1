$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.15/electron-v1.3.15-win32-ia32.zip'
$checksum = '47ca597957ac34b9d77dcdf96da6a25b'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.15/electron-v1.3.15-win32-x64.zip'
$checksum64 = '0cf45734a381bf3b02a9b5f1c9b132cc'
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