$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.16/electron-v1.4.16-win32-ia32.zip'
$checksum = '4cfbb5336ae42d4863b01b44c26137c3'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.16/electron-v1.4.16-win32-x64.zip'
$checksum64 = 'ca01cf5e2cbdb630dfe1033d620bcd9d'
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