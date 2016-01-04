$packageName = 'peazip.portable'
$packageVersion = '5.9.1'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.9.1/peazip_portable-5.9.1.WINDOWS.zip', 'http://sourceforge.net/projects/peazip/files/5.9.1/peazip_portable-5.9.1.WIN64.zip')
$url = $urlArray[0]
$checksum = '7a8fbd185886d9d95b972ff85663fcdb74cc6163'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '9a309bc3a3f4ae09a315605e7ddee4faffd281ef'
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