$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v0.37.6/electron-v0.37.6-win32-ia32.zip'
$checksum = '8a6e58fa5ddcd3c6cd7196197252a340'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v0.37.6/electron-v0.37.6-win32-x64.zip'
$checksum64 = '54472ff9860cebb58b14390f31ac418f'
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