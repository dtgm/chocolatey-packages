$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"
