$packageName = "{{PackageName}}"
$url = "{{DownloadUrl}}"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"