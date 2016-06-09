$packageName = "{{PackageName}}"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "{{DownloadUrlx64}}"
$checksum = "{{Checksum}}"
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$unzipLoc" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType"
