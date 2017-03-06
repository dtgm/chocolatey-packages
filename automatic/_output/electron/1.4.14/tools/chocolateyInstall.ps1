$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.14/electron-v1.4.14-win32-ia32.zip'
$checksum = '90e5292ac7e5f1e112f06314e5abcaa8'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.14/electron-v1.4.14-win32-x64.zip'
$checksum64 = '15148d0ea88ba9c126a9547fe3a69c24'
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