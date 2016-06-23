$packageName = 'electron'
$url = 'https://github.com/electron/electron/releases/download/v1.2.5/electron-v1.2.5-win32-ia32.zip'
$checksum = 'ffda022385a8cfbb812cb213c0621b05'
$checksumType = 'md5'
$url64 = 'https://github.com/electron/electron/releases/download/v1.2.5/electron-v1.2.5-win32-x64.zip'
$checksum64 = '11def993130204c4497a0ef03f74e665'
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