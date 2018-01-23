$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.16/electron-v1.6.16-win32-ia32.zip'
$checksum = '8de6695e5a2488b8d4a8d973cd8b2402'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.16/electron-v1.6.16-win32-x64.zip'
$checksum64 = '3831d5faaadef2ee050d5b19b38d581a'
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