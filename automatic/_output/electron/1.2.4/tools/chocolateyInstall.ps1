$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.4/electron-v1.2.4-win32-ia32.zip'
$checksum = 'e85cccfa0603f99b019b84d23ce8a3c8'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.4/electron-v1.2.4-win32-x64.zip'
$checksum64 = '80c6048db9a8c10e3d1223d71ce60f41'
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