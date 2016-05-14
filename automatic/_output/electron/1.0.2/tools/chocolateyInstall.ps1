$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.0.2/electron-v1.0.2-win32-ia32.zip'
$checksum = '4c24e03086adea4cfc8d071b65a86d7a'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.0.2/electron-v1.0.2-win32-x64.zip'
$checksum64 = '1ec951e6d63ae13449b34ee84e860ecf'
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