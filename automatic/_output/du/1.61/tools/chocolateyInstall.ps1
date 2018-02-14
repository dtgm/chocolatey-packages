$packageName = 'du'
$url = 'https://download.sysinternals.com/files/DU.zip'
$checksum = '99b69f9d7930ae0fbc85e446b66446b2bc3ce344a50976f80d717f64aeec4d7b'
$checksumType = 'sha256'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"