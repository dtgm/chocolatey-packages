$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.3.3/electron-v1.3.3-win32-ia32.zip'
$checksum = '5cbcf316cd5b8a4e23f062ad2a4fffd5'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.3.3/electron-v1.3.3-win32-x64.zip'
$checksum64 = '84422cc0d8d11dd7cd020b0c39284235'
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