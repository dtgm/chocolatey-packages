$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.15/electron-v1.6.15-win32-ia32.zip'
$checksum = 'a6517f71ffe8fe6ad42cb825b8afb39f'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.15/electron-v1.6.15-win32-x64.zip'
$checksum64 = '213a8db09f6c1136bdb6b06a54081598'
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