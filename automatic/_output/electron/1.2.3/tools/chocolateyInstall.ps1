$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.3/electron-v1.2.3-win32-ia32.zip'
$checksum = '339e81b1ec446b4c7bb32acf0c8f5743'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.3/electron-v1.2.3-win32-x64.zip'
$checksum64 = '4690b753dfaf6c0f28f84b86aaaf6e21'
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