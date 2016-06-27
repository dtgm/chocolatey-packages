$packageName = "blat"
$urlArray = @('http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/32%20bit%20versions/Win2000%20and%20newer/blat3215_32.full.zip', 'http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/64%20bit%20versions/blat3215_64.full.zip')
$url = $urlArray[0]
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = $urlArray[1]
$checksum = '7ef12973197e714b435ec71406d161b04c5d6e92ce94eb1bfd210436196372ac'
$checksumType = 'sha256'
$checksum64 = 'beaa79ad0197b8b5721d08c8b5473bc9f0704ff764be6e91de4d66b154448646'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"