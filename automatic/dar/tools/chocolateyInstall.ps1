$packageName = '{{PackageName}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"