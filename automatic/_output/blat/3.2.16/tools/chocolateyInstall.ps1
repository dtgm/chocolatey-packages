$packageName = "blat"
$urlArray = @('http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/32%20bit%20versions/Win2000%20and%20newer/blat3216_32.full.zip', 'http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/64%20bit%20versions/blat3216_64.full.zip')
$url = $urlArray[0]
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = $urlArray[1]
$checksum = '4ae28ad8bd9187c146636c026d93ff030fe517c947ec4ed2bc3fc4bce662576d'
$checksumType = 'sha256'
$checksum64 = 'f8c48ecc2ec17b1151525bed9fbfe763b88157874b630e28702569552bdd5e81'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"