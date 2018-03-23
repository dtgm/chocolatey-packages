$packageName = "rhash"
$urlArray = @('https://sourceforge.net/projects/rhash/files/rhash/1.3.6/rhash-1.3.6-win32.zip/download', 'https://sourceforge.net/projects/rhash/files/rhash/1.3.6/rhash-1.3.6-win64.zip/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '7a22ed49bbe3b21232a3ba09ab9c1778c28f023cbd4476a7b1bd981ebed20398'
$checksumType = 'sha256'
$checksum64 = '489285eff0ff081b40539f41e0dd3f94e644e7853eb89e6843860d58cb7968d9'
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