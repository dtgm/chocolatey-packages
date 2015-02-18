$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'

Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc" "$url64"