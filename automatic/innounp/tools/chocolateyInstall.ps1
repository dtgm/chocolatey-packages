$packageName = "{{PackageName}}"
$url = "{{DownloadUrlx64}}"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"