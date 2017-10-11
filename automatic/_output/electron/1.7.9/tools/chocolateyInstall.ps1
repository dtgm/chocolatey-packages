$packageName = 'electron'
$url = 'https://github.com//electron/electron/releases/download/v1.7.9/electron-v1.7.9-win32-ia32.zip'
$checksum = '92f1f3d131243409069d53d46493cede'
$checksumType = 'md5'
$url64 = 'https://github.com//electron/electron/releases/download/v1.7.9/electron-v1.7.9-win32-x64.zip'
$checksum64 = '5c451147c22dc485f3d4bc752d59567e'
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