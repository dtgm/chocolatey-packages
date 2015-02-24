$packageName = "dd"
$url = "http://www.chrysocome.net/downloads/dd-0.5.zip"
$checksum = 'x'
$checksumType = 'sha1'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"