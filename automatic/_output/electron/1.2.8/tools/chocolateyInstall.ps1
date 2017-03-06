$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.8/electron-v1.2.8-win32-ia32.zip'
$checksum = '25796a2218fcfde304d473f7ec938df5'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.8/electron-v1.2.8-win32-x64.zip'
$checksum64 = '28b0c20a3ef70be6d359706824379b28'
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