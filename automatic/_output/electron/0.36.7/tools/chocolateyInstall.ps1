$packageName = 'electron'
$url = 'https://github.com//atom/electron/releases/download/v0.36.7/electron-v0.36.7-win32-ia32.zip'
$checksum = '8bc6fe0045d4a7449a49a47b0a817868'
$checksumType = 'md5'
$url64 = 'https://github.com//atom/electron/releases/download/v0.36.7/electron-v0.36.7-win32-x64.zip'
$checksum64 = 'f62b6a45debf4b4138c801a77ff3bd79'
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