$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.3/electron-v0.36.3-win32-ia32.zip'
$checksum = '0894144b53bda24eb11c03b2894bcb27'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.3/electron-v0.36.3-win32-x64.zip'
$checksum64 = '55b534b15d3a79c124db17229d65ef8b'
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