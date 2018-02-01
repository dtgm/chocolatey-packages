$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.17/electron-v1.6.17-win32-ia32.zip'
$checksum = 'c888933406118a6336b21d2bc2573244'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.17/electron-v1.6.17-win32-x64.zip'
$checksum64 = 'b9db339d9fe0360e9ab9e0c36331815f'
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