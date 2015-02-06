$packageName = "{{PackageName}}"
$url = "{{DownloadUrlx64}}"
$url64 = "$url"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = "{{Checksum}}"
$checksumType = 'sha1'
$checksum64 = "{{Checksumx64}}"
$checksumType64 = 'sha1'
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$unzipLoc" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"