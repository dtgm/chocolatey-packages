$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.29.2/electron-v0.29.2-win32-ia32.zip'
$checksum = 'fca7819b68aa0f1a87402efe66beb4dd'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.29.2/electron-v0.29.2-win32-x64.zip'
$checksum64 = 'a92da90b70f545a2fc48ca3cb0dcf649'
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