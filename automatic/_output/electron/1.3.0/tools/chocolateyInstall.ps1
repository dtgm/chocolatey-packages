$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.0/electron-v1.3.0-win32-ia32.zip'
$checksum = 'acc555e683859b69f3545163bd541ade'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.0/electron-v1.3.0-win32-x64.zip'
$checksum64 = 'de73353e7f3e8e4fba81ffee9f8fb52f'
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