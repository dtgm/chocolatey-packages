$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.9/electron-v1.3.9-win32-ia32.zip'
$checksum = 'cfaa246417aa6da765096d8f1a9148e2'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.9/electron-v1.3.9-win32-x64.zip'
$checksum64 = '2b1ed792843640d2d5071d8ce775fe7c'
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