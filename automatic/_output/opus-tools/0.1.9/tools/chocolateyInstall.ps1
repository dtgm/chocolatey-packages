$packageName = 'opus-tools'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://ftp.mozilla.org/pub/mozilla.org/opus/win32/opus-tools-0.1.9-win32.zip'
$checksum = 'b97a7956b927aee527dbabe00292b4adef89960a'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"