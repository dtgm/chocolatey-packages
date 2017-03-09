$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.6.2/electron-v1.6.2-win32-ia32.zip'
$checksum = 'ff41fc4781f34354bd9ee87f027a561a'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.6.2/electron-v1.6.2-win32-x64.zip'
$checksum64 = '6af3c88691b02abc8db4010930ade435'
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