try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFolder = "$packageName-$packageVersion-win"
  $url = '{{DownloadUrl}}'
  Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"
} catch {
  throw $_.Exception
}