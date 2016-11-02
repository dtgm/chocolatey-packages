$packageName = 'love.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitbucket.org/rude/love/downloads/love-0.10.2-win32.zip'
$checksum = ''
$checksumType = 'md5'
$url64 = 'https://bitbucket.org/rude/love/downloads/love-0.10.2-win64.zip'
$checksum64 = ''
$checksumType64 = 'md5'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"