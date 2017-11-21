$packageName = "blat"
$urlArray = @('http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/32%20bit%20versions/Win2000%20and%20newer/blat3219_32.full.zip/download', 'http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/64%20bit%20versions/blat3219_64.full.zip/download')
$url = $urlArray[0]
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = $urlArray[1]
$checksum = '61fb1ccb0275aea519a0cdf07ece2687cb82a7906c2d000da57fc55f137d1f66'
$checksumType = 'sha256'
$checksum64 = '8cb0d7a20f93fb918311cb6af6ad39b6001a905014bba3d2ce5d36a46a2d201d'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"