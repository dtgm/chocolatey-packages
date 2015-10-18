$packageName = "blat"
$urlArray = @('http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/32%20bit%20versions/Win2000%20and%20newer/blat329_32.full.zip/download', 'http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/64%20bit%20versions/blat329_64.full.zip/download')
$url = $urlArray[0]
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = $urlArray[1]
$checksum = '6c111bb4f84b953c2c2f128050762098f6ec992f'
$checksumType = 'sha1'
$checksum64 = 'b0988ae38a6dfb99c4b4a59b272d4aa76b0a59e8'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"