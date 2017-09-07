$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.7.6/electron-v1.7.6-win32-ia32.zip'
$checksum = '621aa51370fd382efa5d3f9b067c9418'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.7.6/electron-v1.7.6-win32-x64.zip'
$checksum64 = '209ac61bf8724ae3da836f06672fe849'
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