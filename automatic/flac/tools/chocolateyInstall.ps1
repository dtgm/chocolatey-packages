$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -Checksum "$checksum" -ChecksumType "$checksumType"
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
