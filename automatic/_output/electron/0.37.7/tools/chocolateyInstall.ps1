$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v0.37.7/electron-v0.37.7-win32-ia32.zip'
$checksum = 'e9ea75b8683d4f0165bf319f9f35cc67'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v0.37.7/electron-v0.37.7-win32-x64.zip'
$checksum64 = 'caeb18cd423dcb80389c77a0ee303581'
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