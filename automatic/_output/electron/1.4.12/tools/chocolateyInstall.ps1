$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.12/electron-v1.4.12-win32-ia32.zip'
$checksum = '57d68ee851516408d5093ebc7180cf94'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.12/electron-v1.4.12-win32-x64.zip'
$checksum64 = '862cfa00385e312fa4172c3aa403ad44'
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