$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '{{DownloadUrl}}'
Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir"