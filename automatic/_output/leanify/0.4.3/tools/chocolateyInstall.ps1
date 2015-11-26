$packageName = 'leanify'
$url = 'https://github.com/JayXon/Leanify/releases/download/v0.4.3/Leanify_win32.7z'
$checksum = '9c2e7586067b7d6848d7fee907405a03'
$checksumType = 'md5'
$url64 = 'https://github.com/JayXon/Leanify/releases/download/v0.4.3/Leanify_win64.7z'
$checksum64 = '9f1a0a4ac18ee6ed14fb921536c5034f'
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