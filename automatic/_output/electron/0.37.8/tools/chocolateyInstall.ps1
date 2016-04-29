$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v0.37.8/electron-v0.37.8-win32-ia32.zip'
$checksum = '22204fd35a17486a2a6680d5bc7bd7de'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v0.37.8/electron-v0.37.8-win32-x64.zip'
$checksum64 = 'be60bce799784c323bfbc78171ed2e38'
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