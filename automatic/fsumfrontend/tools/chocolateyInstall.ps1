$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Checksum "$checksum" -ChecksumType "$checksumType"
try {
  $installFile = Join-Path $toolsDir "$($packageName).exe"
  Set-Content -Path ("$installFile.gui") -Value $null
} catch {
  throw $_.Exception
}
