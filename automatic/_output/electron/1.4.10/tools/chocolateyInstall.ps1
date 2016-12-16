$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.10/electron-v1.4.10-win32-ia32.zip'
$checksum = '32579586bd8ae584cb8bab7e11656c72'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.10/electron-v1.4.10-win32-x64.zip'
$checksum64 = '5bedcd5dc7f2ea7ae056e91b590153b5'
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