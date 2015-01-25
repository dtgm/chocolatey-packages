$packageName = "innounp"
$url = "http://sourceforge.net/projects/innounp/files/innounp/innounp 0.40/innounp040.rar/download"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"