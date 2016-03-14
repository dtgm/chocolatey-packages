$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -url64bit "" -specificFolder "" -checksum "$checksum" -checksumType "$checksumType"
try {
  Set-Content -Path ("$toolsDir\$packageName-$packageVersion.exe.gui") -Value $null
} catch {
  throw $_.Exception
}
