$packageName = "zsnes"
$url = "http://sourceforge.net/projects/zsnes/files/zsnes/ZSNES%20v1.51/zsnesw151.zip/download"
$url64 = "$url"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = "3a73bbacadd9d126f4a6d6fe230a312a489176cb"
$checksumType = 'sha1'
$checksum64 = "3a73bbacadd9d126f4a6d6fe230a312a489176cb"
$checksumType64 = 'sha1'
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$unzipLoc" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"