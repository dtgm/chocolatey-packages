$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.4.13/electron-v1.4.13-win32-ia32.zip'
$checksum = '24831ad55c66e543ef9935ebe11abb6b'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.4.13/electron-v1.4.13-win32-x64.zip'
$checksum64 = '3e4e2a069babca06ed15e355cfeaec39'
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