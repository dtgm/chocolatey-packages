$packageName = "rhash"
$urlArray = @('http://sourceforge.net/projects/rhash/files/rhash/1.3.3/rhash-1.3.3-win32.zip/download', 'http://sourceforge.net/projects/rhash/files/rhash/1.3.3/rhash-1.3.3-1-win64.zip/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '69c37b626e5b4fafafa0757d5b0529272f644380'
$checksumType = 'sha1'
$checksum64 = '4b955d912857d539f993ee4db8941467d112ee7a'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"