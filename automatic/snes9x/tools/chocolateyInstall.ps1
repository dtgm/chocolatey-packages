$packageName = "{{PackageName}}"
$url = "{{DownloadUrl}}"
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = "{{DownloadUrlx64}}"
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$unzipLoc" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
