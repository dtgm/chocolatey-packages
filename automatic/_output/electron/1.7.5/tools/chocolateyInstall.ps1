$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.7.5/electron-v1.7.5-win32-ia32.zip'
$checksum = '6395e49f558258f17ca52526784361ff'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.7.5/electron-v1.7.5-win32-x64.zip'
$checksum64 = 'bcf1f2aa83ed14c31e943498c85186ed'
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