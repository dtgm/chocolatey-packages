$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"
try {
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    Remove-Item -Recurse (Join-Path "$unzipLoc" (Join-Path "$installFolder" 'win32'))
  } else {
    Remove-Item -Recurse (Join-Path "$unzipLoc" (Join-Path "$installFolder" 'win64'))
  }
} catch {
  throw $_.Exception
}