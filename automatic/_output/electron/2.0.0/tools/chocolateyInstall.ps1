$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v2.0.0/electron-v2.0.0-win32-ia32.zip'
$checksum = '208ba075bd7fdaf53453e6bff404a56a'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v2.0.0/electron-v2.0.0-win32-x64.zip'
$checksum64 = '89844fe8f5a1e64b71e3a36c75d0f759'
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