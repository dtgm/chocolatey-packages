$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.5/electron-v1.4.5-win32-ia32.zip'
$checksum = '1d813d23bb226135c02f27c6c0bd30a2'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.5/electron-v1.4.5-win32-x64.zip'
$checksum64 = '03d2fbf3074e7efcc6ba93743494477a'
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