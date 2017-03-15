$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.14/electron-v1.3.14-win32-ia32.zip'
$checksum = '0d968fbeb8c677838b1b0966f77e6cdc'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.14/electron-v1.3.14-win32-x64.zip'
$checksum64 = '8dcd2789f8d86a8a6a06ac5dc7f4f32f'
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