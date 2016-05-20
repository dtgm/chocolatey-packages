$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.1.1/electron-v1.1.1-win32-ia32.zip'
$checksum = '80c1bb5b43dfd8b1ffcdced133f32f21'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.1.1/electron-v1.1.1-win32-x64.zip'
$checksum64 = 'b63ddc1f21995074b972bf739b26c8a5'
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