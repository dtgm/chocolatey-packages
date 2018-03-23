$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.8.4/electron-v1.8.4-win32-ia32.zip'
$checksum = 'a888be0690b8b57f7703bc4aafba7536'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.8.4/electron-v1.8.4-win32-x64.zip'
$checksum64 = '87b883465918a124811e995ea068bb6f'
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