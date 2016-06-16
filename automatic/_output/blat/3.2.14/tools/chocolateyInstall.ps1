$packageName = "blat"
$urlArray = @('http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/32%20bit%20versions/Win2000%20and%20newer/blat3214_32.full.zip', 'http://sourceforge.net/projects/blat/files/Blat%20Full%20Version/64%20bit%20versions/blat3214_64.full.zip')
$url = $urlArray[0]
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = $urlArray[1]
$checksum = '13295522fa1720d961e5ca45854ba68a6c232443e8bf405ecec86d301deb5bd3'
$checksumType = 'sha256'
$checksum64 = '251e7b8ac87dbd54745356a172760d8ed11360fec41c51a524bf3aa4df047414'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"