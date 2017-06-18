$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.11/electron-v1.6.11-win32-ia32.zip'
$checksum = 'd6198f287be1c5089def9cf21cfdcc3e'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.11/electron-v1.6.11-win32-x64.zip'
$checksum64 = '5cc81878e5c524fdc8ea447245aeeed1'
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