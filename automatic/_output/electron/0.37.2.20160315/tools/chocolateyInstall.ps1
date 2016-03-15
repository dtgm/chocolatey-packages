$packageName = 'electron'
$url = 'https://github.com/atom/electron/releases/download/v0.37.2/electron-v0.37.2-win32-ia32.zip'
$checksum = '23b6a7b38063e931d685e1cc5d23b0a9'
$checksumType = 'md5'
$url64 = 'https://github.com/atom/electron/releases/download/v0.37.2/electron-v0.37.2-win32-x64.zip'
$checksum64 = '9520f6737784eef0547ca9a13180f355'
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