$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.0/electron-v1.2.0-win32-ia32.zip'
$checksum = '1495c1f33a7d7e58bba74e58ddebd284'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.0/electron-v1.2.0-win32-x64.zip'
$checksum64 = '998b952be9082bb6db3a64bfcb2c2824'
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