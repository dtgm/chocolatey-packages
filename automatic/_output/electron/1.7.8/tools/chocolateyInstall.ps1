$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.7.8/electron-v1.7.8-win32-ia32.zip'
$checksum = '7574bf28f2239f2d94215137795f22aa'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.7.8/electron-v1.7.8-win32-x64.zip'
$checksum64 = '5eedc0eaeb39852c90388e8b939789e6'
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