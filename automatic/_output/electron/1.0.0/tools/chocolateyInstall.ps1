$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.0.0/electron-v1.0.0-win32-ia32.zip'
$checksum = '617a43b936652b65fabfd60772fe4237'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.0.0/electron-v1.0.0-win32-x64.zip'
$checksum64 = 'a35df47aca14c3ee960af00e766f0fb4'
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