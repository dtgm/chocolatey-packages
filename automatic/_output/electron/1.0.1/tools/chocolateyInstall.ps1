$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.0.1/electron-v1.0.1-win32-ia32.zip'
$checksum = 'caf0ec527735ba967183bbc171f7a8fd'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.0.1/electron-v1.0.1-win32-x64.zip'
$checksum64 = 'e9256e1f4d897a94d3d43baf1c3a5a8d'
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