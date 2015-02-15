$packageName = 'mooncoin'
$packageVersion = '1.862.1'
$url = 'http://downloads.mooncoin.rocks/Mooncoin-1.862.1.7z'
$url64 = 'http://downloads.mooncoin.rocks/Mooncoin-1.862.1.7z'
$checksum = '889b5b03eaa8a890be66f843df1c3609656f66f1'
$checksumType = 'sha1'
$checksum64 = '889b5b03eaa8a890be66f843df1c3609656f66f1'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -url64bit "$url64" -specificFolder "" -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
try {
	Set-Content -Path ("$toolsDir\$packageName-$packageVersion.exe.gui") -Value $nul
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
