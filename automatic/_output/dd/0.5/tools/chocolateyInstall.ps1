$packageName = "dd"
$url = "http://www.chrysocome.net/downloads/dd-0.5.zip"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"