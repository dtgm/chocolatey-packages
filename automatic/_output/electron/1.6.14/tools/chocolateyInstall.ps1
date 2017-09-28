$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.6.14/electron-v1.6.14-win32-ia32.zip'
$checksum = 'de0543cc83ece9b9a46571ebcb2cea7f'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.6.14/electron-v1.6.14-win32-x64.zip'
$checksum64 = '6f45ac4cc046126d1018b45525aebd3a'
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