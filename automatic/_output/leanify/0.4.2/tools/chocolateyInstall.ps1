$packageName = 'leanify'
$url = 'https://github.com/JayXon/Leanify/releases/download/v0.4.2/Leanify_win32.7z'
$checksum = '234f3db3c9ccf87a85da787557ceda61'
$checksumType = 'md5'
$url64 = 'https://github.com/JayXon/Leanify/releases/download/v0.4.2/Leanify_win64.7z'
$checksum64 = '5273e8cf586f2e7f3a2669821741e1c4'
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