$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.2/electron-v1.2.2-win32-ia32.zip'
$checksum = '8dbe823dc87225654c7f77a0b877ec1f'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.2/electron-v1.2.2-win32-x64.zip'
$checksum64 = '6aae5ff8186c3f2bc05385168123183b'
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