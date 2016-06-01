$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.1/electron-v1.2.1-win32-ia32.zip'
$checksum = '0b18573b3b25a006bbf8e652fa36031c'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.1/electron-v1.2.1-win32-x64.zip'
$checksum64 = 'e1720016c01b28ecb17650a189605c11'
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