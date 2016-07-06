$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.6/electron-v1.2.6-win32-ia32.zip'
$checksum = '061fcac277f633c3217b1afa7daabb69'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.6/electron-v1.2.6-win32-x64.zip'
$checksum64 = '3b84d0b370b3dec58c9858526113c9d5'
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