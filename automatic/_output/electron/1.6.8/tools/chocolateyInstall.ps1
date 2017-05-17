$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.8/electron-v1.6.8-win32-ia32.zip'
$checksum = '21abfc9a024f161961b8fbe49919056a'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.8/electron-v1.6.8-win32-x64.zip'
$checksum64 = '58154ab8a89cf742200f5613d92516b6'
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