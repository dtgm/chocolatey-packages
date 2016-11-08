$packageName = "rhash"
$urlArray = @('https://sourceforge.net/projects/rhash/files/rhash/1.3.4/rhash-1.3.4-win32.zip', 'https://sourceforge.net/projects/rhash/files/rhash/1.3.4/rhash-1.3.4-win64.zip')
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '1fd3595c385db530ac74b007867c6d93a7fc7ba5d9a8e88cec8352db65cdfe96'
$checksumType = 'sha256'
$checksum64 = '23a80e5f34fb80b25c0d16b8aa4b108ecc8d8931e159ba9d24c42cae5d4aeaa2'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"